require "vertx"

include Vertx

@server = HttpServer.new.request_handler do |req|
  req.response.end("<html><body><h1>Hello from Vert.x!</h1></body></html>")
end.listen(Integer(ENV['OPENSHIFT_INTERNAL_PORT']), ENV['OPENSHIFT_INTERNAL_IP'])

def vertx_stop
  @server.close
end