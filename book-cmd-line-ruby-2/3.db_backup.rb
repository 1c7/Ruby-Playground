require 'optparse'

options = {}
option_parser = OptionParser.new do |opts|

  # Create a switch
  opts.on("-i","--iteration") do
    options[:iteration] = true
  end

  opts.on("-u USER") do |user| # 如果这个参数不符合正则表达式就报错
    unless user =~ /^.+\..+$/
      raise ArgumentError,"USER must be in 'first.last' format"
    end
    options[:user] = user
  end
  # 下面这种写法更简单，效果一致
  opts.on("-u USER",
          /^.+\..+$/) do |user|
    options[:user] = user
  end

  opts.on("-p PASSWORD") do |password|
    options[:password] = password
  end

end

begin
option_parser.parse!
puts options.inspect
rescue OptionParser::InvalidArgument => ex
  STDERR.puts ex.message
  STDERR.puts option_parser
end

if ARGV.include? 'DEBUG'
  puts "iteration: #{options[:iteration]}"
  puts "user: #{options[:user]}"
  puts "password: #{options[:password]}"
  ARGV.each do |database|
    puts database unless database == 'DEBUG'
  end
end
