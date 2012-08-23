# Simple, scrappy UDP DNS server in Ruby (with protocol annotations)
# By Peter Cooper
#
# MIT license
#
# * Not advised to use in your production environment! ;-)
# * Requires Ruby 1.9
# * Supports A and CNAME records
# * See http://www.ietf.org/rfc/rfc1035.txt for protocol guidance
# * All records get the same TTL

require 'socket'

class DNSRequest
  attr_reader :server, :data, :domain
  
  def initialize(server, data)
    @server = server
    @data = data
    
    extract_domain
  end
  
  def extract_domain
    @domain = ''
    
    # Check "Opcode" of question header for valid question
    if @data[2].ord & 120 == 0
      # Read QNAME section of question section
      # DNS header section is 12 bytes long, so data starts at offset 12

      idx = 12    
      len = @data[idx].ord
      # Strings are rendered as a byte containing length, then text.. repeat until length of 0
      until len == 0 do
        @domain += @data[idx + 1, len] + '.'
        idx += len + 1
        len = @data[idx].ord
      end
    end
  end
  
  def response(val)
    return empty_response if domain.empty? || !val

    cname = val =~ /[a-z]/
    
    # Valid response header
    response = "#{data[0,2]}\x81\x00#{data[4,2] * 2}\x00\x00\x00\x00"
    
    # Append original question section
    response += data[12..-1]
    
    # Use pointer to refer to domain name in question section
    response += "\xc0\x0c"
    
    # Set response type accordingly
    response += cname ? "\x00\x05" : "\x00\x01"
    
    # Set response class (IN)
    response += "\x00\x01"
          
    # TTL in seconds
    response += [server.ttl].pack("N")
          
    # Calculate RDATA - we need its length in advance
    if cname
      rdata = val.split('.').collect { |a| a.length.chr + a }.join + "\x00"
    else
      # Append IP address as four 8 bit unsigned bytes
      rdata = val.split('.').collect(&:to_i).pack("C*")
    end
    
    # RDATA is 4 bytes
    response += [rdata.length].pack("n")
    response += rdata
  end
  
  def empty_response
    # Empty response header
    # [id * 2, flags, NXDOMAIN, qd count * 2, an count * 2, ns count * 2, ar count * 2]
    response = "#{data[0,2]}\x81\x03#{data[4,2]}\x00\x00\x00\x00\x00\x00"
    
    # Append original question section
    response += data[12..-1]
  end
end

class DNSServer
  attr_reader :port, :ttl
  attr_accessor :records
  
  def initialize(options = {})
    options = {
      port: 53,
      ttl: 60,
    }.merge(options)
    
    @port, @ttl = options[:port], options[:ttl]
  end
    
  def run
    Socket.udp_server_loop(@port) do |data, src|
      r = DNSRequest.new(self, data)
      src.reply r.response('127.0.0.1')
    end
  end
end

DNSServer.new.run
