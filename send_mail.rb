=begin
  gmail 能用.
  qq 不行
  用了 mail 这个 gem，然后用了 gmail 发邮件
=end
require 'mail'

qq = '1003211008@qq.com'
gmail = 'guokrfans@gmail.com'

gmail_options = { :address        => "smtp.gmail.com",
            :port                 => 587,
            :domain               => 'gmail.com',
            :user_name            => 'guokrfans@gmail.com',
            :password             => 'thisgmail',
            :authentication       => 'plain',
            :enable_starttls_auto => true
          }

qq_options =
          { :address              => "smtp.qq.com",
            :port                 => 587,
            :domain               => 'qq.com',
            :user_name            => '1003211008',
            :password             => '',
            :authentication       => 'plain',
            :enable_starttls_auto => true
          }


Mail.defaults do
  delivery_method :smtp, gmail_options
end


Mail.deliver do
  from     'this asdadasd' # from 其实无所谓, gmail 把这个盖掉了
  to       qq
  subject  'MyHereGo'
  body     'nice'
end
