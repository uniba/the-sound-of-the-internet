var urandom = require('fs').createReadStream('/dev/urandom');

process.on('uncaughtException', function(e) {
  console.log(e);
});

require('net').createServer(function(socket) {
  urandom.pipe(socket);
}).listen(10101);

