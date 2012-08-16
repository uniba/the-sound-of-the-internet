/*Is DOM supported?*/
var ie = (document.all) ? true:false; // IE4+
var dom = ((document.getElementById) && (!ie)) ? true:false; // Mozilla 
var input; //User input
var result; //Computed result
var placeholder; //128 64 32 16 8 4 2 1 are examples of the 8 placeholders in a byte
var base = 2; //Binary number system use base 2; either 1 or 0.
var binToDec = "binaryToDecimal"; //Flag for binary to decimal
var decToBin = "decimalToBinary";//Flag for decimal to binary
var binInputId = "binary-input" //id of the input element for binary numbers
var decInputId = "decimal-input" //id of the input element for decimal numbers
var event = "keyup"; //Event that triggers computation
var binErrMsg = "Invalid input. Must be 1 or 0."; //Error message for invalid input in the binary field
var decErrMsg = "Invalid input. Must be an integer between 0-9."; //Error message for invalid input in the decimal field
var unknownErrMsg = "Unknown error. Invalid input?"; //Error message for unknown errors

/*Calls to the help function*/
setEventById(binInputId, event, function(){converter(binToDec);return false;});
setEventById(decInputId, event, function(){converter(decToBin);return false;});

/*Help function to set event listeners for both browsers that support DOM and those who don't*/
function setEventById(id, ev, fu) {
    if(dom) 
		document.getElementById(id).addEventListener(ev, fu, false);
	if(ie)
		document.getElementById(id).attachEvent('on' + ev, fu);
} 

/*Help function used for validating the decimal input field. It should contain only Integers*/
function isInteger(s) {
    var validChars = "0123456789";
    var isNumber=true;
    var c;
    for (i = 0; i < s.length && isNumber == true; i++) { 
        c = s.charAt(i); 
        if (validChars.indexOf(c) == -1) 
            isNumber = false;
    }
    return isNumber;
}

/*The converter function. Takes a flag as input parameter. 
The flag can flag for binary conversion or decimal conversion*/
function converter(choice) { 
    input = ""; 
    result = ""; 
    placeholder = 1;
    //Binary to Decimal    
    if(choice == binToDec) { 
        input = document.getElementById(binInputId).value;      
        for(i=0; i <=  input.length-1; i++) { 
            if( input.charAt(i) != "0" &&  input.charAt(i) != "1") { 
                document.getElementById(decInputId).value = binErrMsg;
                return false; 
            } 
            else if(i != 0)
                 placeholder =  placeholder * base; 
        }
        result = eval( input.charAt(0)) *  placeholder; 
        for (i = 1; i <= input.length-1; i++) { 
            placeholder = placeholder / base; 
            result = result + (eval( input.charAt(i)) * placeholder); 
        }
        if(isNaN(result))
            result ="";        
        document.getElementById(decInputId).value = result; 
    }
    //Decimal to Binary        
    else if(choice == decToBin) { 
        try {
             input = document.getElementById(decInputId).value;
             //Must be an Integer
            if(!isInteger(input)) {
                document.getElementById(binInputId).value = decErrMsg;
                return false;
            }
            while(placeholder <=  input) { 
                placeholder = placeholder * base;       
            } 
            placeholder = placeholder / base; 
            while (placeholder > 0.5) { 
                if( input >= placeholder) { 
                    result = result + "1"; 
                    input = input - placeholder; 
                } 
                else if( input < placeholder)  
                    result = result + "0"; 
                placeholder = placeholder / base; 
            }
            if(isNaN(result))
                result ="";               
            document.getElementById(binInputId).value = result;
        }
        //Just in case for unpredictable errors    
         catch(err) {
            document.getElementById(binInputId).value = unknownErrMsg;
            document.getElementById(decInputId).value = unknownErrMsg;
        }
    }
} 

//End convertToBinaryOrDecimal
