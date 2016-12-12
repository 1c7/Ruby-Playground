#!/usr/bin/env ruby
=begin
  暂时没试成功
  用 SendCloud 发邮件
=end
require 'rubygems'
require 'rest_client'

def send_mail
        response = RestClient.post "http://sendcloud.sohu.com/webapi/mail.send.json",
        :api_user => 'agoodob_test_OWA5PN',    # 使用api_user和api_key进行验证
        :api_key => '...',
        :from => "sendcloud@sendcloud.org", # 发信人，用正确邮件地址替代
        :fromname => "SendCloud",
        :to => "1003211008@qq.com", # 收件人地址，用正确邮件地址替代，多个地址用';'分隔
        :subject => "SendCloud ruby webapi common example",
        :html => '欢迎使用SendCloud'

return response
end

response = send_mail
puts response.code
puts response.to_str
