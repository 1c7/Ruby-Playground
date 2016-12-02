# Book <Build Awesome Command-Line Applications in Ruby 2>
https://www.safaribooksonline.com/library/view/build-awesome-command-line/9781941222409/f_0014.html

## 进度
看了一半没看完, 后面的快速翻了下.

## 简短总结下这书都讲了什么，我学到了什么
  1. 如书名所说的，教你写命令行工具的, 仅此而已没别的.
  2. 第 1 个工具是备份数据库的 ruby 脚本(叫 db_backup), 参数全部自己解析, 读 ARGV
  1. 用 gem optparse, 全名 OptionParser 来帮我们做命令行工具,
    因为自己处理参数太麻烦了.
  1. 介绍了下 GLI 这个工具, gli scaffold todo new list done
    稍微介绍了一点
  1. 回到之前的 db_backup 做 -h 帮助信息, 告诉你什么是 banner, 然后用 OptionParser 的话帮助信息要怎么做
  1. ...跳过一些
  1. gem man db_backup - 做 man page 不过好像不是 linux 里那种, 是 gem man 提供的.
  1. 学 interactive, 就像 sql 那种，这次做个新程序, 因为 db 和 todo 都不需要交互. 作者说强行扯例子太牵强了干脆做个新的. json browser, 从一个 file.json 文件里面读取 json 信息, 然后用四个命令来操作 ls cat cd exit.
  1.
  1.

## 顺序大纲
  1. 写 db_backup - 这玩意备份数据库的
  2. 写 todo  - new, list, done
  3. 回到 db_backup - 做 help 信息
  4. gem-man 做 man page, gem install gem-man, gem man <xxx>
  1. interactive command line 就像 mysql


### 参数有两种

  短的比如 `ls -l` 里的 `-l`
  长的比如 `--basic`

## gem
  * optparse 自带了, 可以解析参数比如 -f --file
  * gli 要安装
  * gem-man 要安装
  * ronn, 和 man 一起的
  * rainbow 给命令行加颜色
  * terminal-table 做命令行表格的, 类似于 mysql 那种
