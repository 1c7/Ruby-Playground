# not finish
# https://www.safaribooksonline.com/library/view/mark-bates-on/9781491938300/part00.html
$.unshift File.dirname(__FILE__)

require 'simple_framework'

route('/hello') do
  "hello #{params[:name] || "World" } "
end

route('/goodbye')
  status 500
  "good bye"
end

run SimpleFramework.app
