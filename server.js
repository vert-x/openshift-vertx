load('vertx.js')

var port = parseInt(vertx.env['OPENSHIFT_INTERNAL_PORT'])
var host = vertx.env['OPENSHIFT_INTERNAL_IP']

vertx.createHttpServer().requestHandler(function(req) {
  req.response.end("<html><body><h1>Hello from vert.x!</h1></body></html>");
}).listen(port, host);