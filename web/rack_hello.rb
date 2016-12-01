# not working
require 'rack'

class HelloWorld
  def call(env)
    req = Rack::Request.new(env)
    case req.path_info
    when /hello/
      [200, {"Content-Type" => "text/html"}, ["Hello World!"]]
    when /goodbye/
      [500, {"Content-Type" => "text/html"}, ["Bye World!"]]
    else
      [400, {"Content-Type" => "text/html"}, ["Lost World!"]]
    end
  end
end

run HelloWorld.new
