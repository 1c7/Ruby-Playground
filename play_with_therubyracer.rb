require 'therubyracer'

V8::Context.new do |cxt|
  p cxt.eval('1 + 1') #=> 2
  cxt.eval('foo = {bar: "bar", baz: "baz"}')
  p cxt.eval('foo.bar') #=> "bar"
  p cxt.eval('foo.baz') #=> "baz"
  cxt.eval('new Object()') #=> [object Object]
end
