# ruby db_backup.rb travel_dev root admin
# Book < Build Awesome Command-Line Applications in Ruby 2 >

database = ARGV.shift
username = ARGV.shift
password = ARGV.shift
end_of_iter = ARGV.shift

if end_of_iter.nil?
  backup_file = database + Time.now.strftime("%Y%m%d")
else
  backup_file = database + end_of_iter
end

sql = "mysqldump -u #{username} -p #{database} > #{backup_file}.sql"
p sql
`#{sql}`
`gzip #{backup_file}.sql`

# you can run command when you use `` quote them??
