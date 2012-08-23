
// include modules
var http = require('http'), 
    connect = require('connect'),
    osc = require('node-osc'),
    url = require('url'),
    util = require('util'),
    colors = require('colors');

// create osc client
var client = new osc.Client('127.0.0.1', 8000);

function sendToOSC() {
  var m = new osc.Message(arguments[0]);
  for (var i = 1, len = arguments.length; i < len;i ++) {
    m.append(arguments[i] || '');
  }
  client.send(m);
}

var app = connect();
app
  .use(function(cliReq, proxyRes, next) {
    var parsed = url.parse('http://' + cliReq.headers.host),
        options = {
          host: cliReq.headers.host,
          port: 80,
          path: cliReq.url,
          method: 'GET'
        };
    util.puts(('/in, ' + options.host + ', ' + options.path).red);
    sendToOSC('/in', options.host, options.path);
    util.puts(("Sent request for " + options.host + ':' + options.path + '.').blue);

    var req = http.request(options, function(res) {            
      util.puts(("Got response for " + options.host + ':' + options.path + '.').yellow);
      for (var key in res.headers) {
        proxyRes.setHeader(key, res.headers[key]);
      }
      res.on('data', function(chunk) {
        util.puts(('/out, ' + res.statusCode + ', ' + res.headers['content-type'] + ', ' + res.headers['content-length']).red);
        sendToOSC('/out', res.statusCode, res.headers['content-type'], res.headers['content-length']);
        proxyRes.write(chunk);
      });
      res.on('end', function() {      
        proxyRes.end();
      });
    });
    
    req.on('error', function(e) {
      console.log('error');
    });

    req.end();
  });

http.createServer(app).listen(80);
util.puts(('Server start at port 80.').red);
