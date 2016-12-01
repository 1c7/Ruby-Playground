#!/usr/bin/env ruby
# 上面这行好像帮助不大啊。。直接跑不带 ruby 命令还是不行，路径不对？

# ruby book-cmd-line-ruby-2/2.db_backup.rb -h
# 自带了 -h 帮助

require 'optparse'

options = {}
option_parser = OptionParser.new do |opts|

  # -h 开头第一行没缩进的那行说明叫 banner
  exeable_name = File.basename($PROGRAM_NAME)
  opts.banner = "Back up MySQL database

  Usage: #{exeable_name} [options] database_name
  "

  # Create a switch
  opts.on("-i", "--iteration", 'document for this') do
    options[:iteration] = true
  end

  # Create a flag
  opts.on("-u USER") do |user|
    options[:user] = user
  end

  opts.on("-p PASSWORD") do |password|
    options[:password] = password
  end

end

option_parser.parse! # 这条跑了之后, 会把 ARGV 里认得的东西都拿掉

# 没给对参数的话。提示错了，然后输出帮助。
if ARGV.empty?
  puts 'error: you must input database_name'
  puts
  puts option_parser.help
else
  database_name = ARGV[0]
end



puts options.inspect
=begin
  如果要不带 ruby 执行的话:
    文件开头 #!/usr/bin/env ruby
    增加运行权限 chmod +x 2.db_backup.rb
    ./2.db_backup.rb

  有没有办法不要这个 ./
    暂时没看到
=end
