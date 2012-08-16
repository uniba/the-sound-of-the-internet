import com.cycling74.max.*;
import java.io.*;
import java.net.*;

public class tcpClient extends MaxObject
{

	Socket dqdSocket = null;
	DataOutputStream os = null;
	BufferedReader is = null;

	String responseLine;
	String addressString = "localhost"; //default address
	int portSetting = 7126; //default port
	boolean aThreadIsOpen = false; //is a listen-back thread open?
	boolean serverConnected = false;
	int socketTimeout = 4000; //default 4 second timeout for connection attempts
	String lineEndingString = "\r\n"; //default to carriage return followed by newline (rn). Can use attribute to switch to newline only (n).
	//boolean setNoDelayOnSocketOpen = 0;
	boolean noDelayValueOnOpen =  false; //don't use Nagle's Algorithm by default

	private static final String[] INLET_ASSIST = new String[]{
		"messages in - ie open, close, address, port, timeout, send, timeout, lineEnding, setNoDelay"
	};
	private static final String[] OUTLET_ASSIST = new String[]{
		"lines read back from TCP Server", "Connection Information"
	};

	private void startSocket() {
		try {
			dqdSocket = TimedSocket.getSocket(addressString,portSetting,socketTimeout);
			//dqdSocket = new Socket(addressString,portSetting);
			//dqdSocket.setSoTimeout(1000);
			os = new DataOutputStream(dqdSocket.getOutputStream());
			is = new BufferedReader(new InputStreamReader(dqdSocket.getInputStream()));
			setNoDelay(noDelayValueOnOpen); //set if using Nagle's algorithm
			serverConnected = true;
			post("Connected to " + addressString + ":" + portSetting);
			outlet(1,new Atom[]{Atom.newAtom("connected")});
		} catch (SocketTimeoutException e) {
			outlet(1,new Atom[]{Atom.newAtom("connection attempt timed out")});
		} catch (UnknownHostException e) {
			post("Don't know about host " + addressString + ":" + portSetting);
			outlet(1,new Atom[]{Atom.newAtom("dont know about host")});
		} catch (IOException e) {
			post("Couldn't get I/O for the connection to " + addressString + ":" + portSetting);
			outlet(1,new Atom[]{Atom.newAtom("cannot connect to host")});
		}
	}

	private void killSocket() {
		try {
			os.close();
			is.close();
			dqdSocket.close();
			serverConnected = false;
			outlet(1,new Atom[]{Atom.newAtom("connection closed")});
		}
		catch (IOException e) {
			post("IOException:  " + e);
		}
	}
	
	public tcpClient(Atom[] args)
	{
		declareInlets(new int[]{DataTypes.ALL});
		declareOutlets(new int[]{DataTypes.ALL,DataTypes.ALL});
		
		setInletAssist(INLET_ASSIST);
		setOutletAssist(OUTLET_ASSIST);
		declareAttribute("address", "getAddress", "setAddress");
		declareAttribute("port", "getPort", "setPort");
		declareAttribute("timeout", "getTimeout", "setTimeout");
		declareAttribute("lineEnding", "getLineEnding", "setLineEnding");
		// need attribute for \n or \n\r or \r\n or whatever - default to just \n
	}


	private void setAddress(String s) {
		addressString = s;
	}

	private Atom[] getAddress() {
		return new Atom[] {Atom.newAtom("address " + addressString)};
	}
	
	private void setPort(int i) {
		portSetting = i;
	}
	
	private Atom[] getPort() {
		return new Atom[] {Atom.newAtom("port " + portSetting)};
	}
	
	private void setTimeout(int t) {
		socketTimeout = t;
	}
	
	private Atom[] getTimeout() {
		return new Atom[] {Atom.newAtom("timeout " + socketTimeout)};
	}
	
	private void setLineEnding(String le) {
		if (le.equals("rn")) {
			lineEndingString = "\r\n";
		} else if (le.equals("n")) {
			lineEndingString = "\n";
		} else { //don't accept anything else
			post(le + " is not a valid line ending string. Use 'rn' for or 'n'");
			post("rn = carriage-return + newline,  n = newline only");
		}
	}
	
	private Atom[] getLineEnding() {
		return new Atom[] {Atom.newAtom("lineEnding " + ((lineEndingString.equals("\r\n")) ? "carriage-return_newline" : "newline") )};
	}
	
	public void open() {
		if (serverConnected) {
			close();
		}
		startSocket();
	}

	public void close() {
		if (dqdSocket != null && os != null && is != null) {
			killSocket();
		}
	}


	
	public void bang()
	{	
		if (!aThreadIsOpen && serverConnected) {
			//create a new thread to listen 
			Thread t = new Thread(){
				public void run()
				{
					aThreadIsOpen = true;
					if (dqdSocket != null && os != null && is != null) { //if socket etc is initialized
						try {
							responseLine = is.readLine();
						} catch (IOException e) {
							//System.err.println("Readback Thread IOException:  " + e);
							outlet(1,new Atom[]{Atom.newAtom("stopped listening on previous connection")});
							serverConnected = false;
							aThreadIsOpen = false;
							return;
						}
						if (responseLine == null) {
							outlet(1,new Atom[]{Atom.newAtom("server disconnected")});
							serverConnected = false;
						} else { //if all goes well
							//post(responseLine);
							outlet(0,new Atom[]{Atom.newAtom(responseLine)});
						}
					}
					aThreadIsOpen = false;
				}
			}; 
			t.start(); //start the thread executing
		}
	}
	
	public void inlet(int i)
	{
	}
	
	public void inlet(float f)
	{
	}
		
	//public void list(Atom[] list)
	//{
	
	//}

	public void send (String inputString)
	{
		if (dqdSocket != null && os != null && is != null) {
			try {
				os.writeBytes(inputString + lineEndingString);
			} catch (UnknownHostException e) {
				post("Trying to connect to unknown host: " + e);
				outlet(1,new Atom[]{Atom.newAtom("unknown host")});
			} catch (IOException e) {
				//post("IOException:  " + e);
				outlet(1,new Atom[]{Atom.newAtom("no connection open")});	
			}
		} else {
			outlet(1,new Atom[]{Atom.newAtom("no connection open")});
		}
	}
	
	public void getNoDelay() {
		if (dqdSocket != null && os != null && is != null) {
			try {
				boolean usingNagle = dqdSocket.getTcpNoDelay();
				if(usingNagle == true) {
					post("Socket is using Nagle's algorithm");
				} else {
					post("Socket is NOT using Nagle's algorithm");
				}
			} catch(SocketException e) {
				post("Socket Exception");
			}
		} else {
			post("Socket is not open - can't get noDelay status");
		}
	}
		
	public void setNoDelay(boolean noDelay) {
		if (dqdSocket != null && os != null && is != null) {
			try {
				//boolean noDelay = (i > 0);
				dqdSocket.setTcpNoDelay(noDelay);
			} catch(SocketException e) {
				post("Socket Exception");
			}
			getNoDelay();
		} else {
			noDelayValueOnOpen = noDelay;
		}
	}
	
	
}
