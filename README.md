# All kind of Ruby code snippet

## About this repo
I copy & paste & modify & write code to learn Ruby.   
Since this is not a tutorial. It may not really useful to you.    



## method
zip  
each_with_index  
each_slice  
each_cons  

## 1. set 用了 hash function 所以 include? 检查特别快
## 2. 把 false == x 放在左边和 x == false 是不一样的
  前者是调用了  FalseClass#== method
## 3. Every value is true except false and nil.
## 4. If you need to differentiate between false and nil, either use the nil? method or use the “==” operator with false as the left operand. -- <Effective Ruby: 48 Specific Ways to Write Better Ruby> first chapter
## 5. ruby 里惯例用下划线 first_name 而不是 firstName 这种驼峰式写法

* Variables:
  ** Local    x
  * Instance @x
  * Class    @@x
  * Global   $x


Instance variables, which serve the purpose of storing information for individual objects, always start with a single at sign (@) and consist thereafter of the same character set as local variables—for example, @age and @last_name.

Class variables, which store information per class hierarchy (again, don’t worry about the semantics at this stage), follow the same rules as instance variables, except that they start with two at signs—for example, @@running_total.

Global variables are recognizable by their leading dollar sign ($)—for example, $population.

Constants begin with an uppercase letter. A, String, FirstName, and STDIN are all valid constant names.

There’s always a self defined when your program is running

```
$ ruby -cw c2f.rb
The -cw command-line flag is shorthand for two flags: -c and -w. The -c flag means check for syntax errors. The -w flag activates a higher level of warning: Ruby will fuss at you if you’ve done things that are legal Ruby but are questionable on grounds other than syntax.
```

```
print   no newline
puts    newline
p
```


Ruby facilitates this process with the 'require' and 'load' methods. We’ll start with load, which is the more simply engineered of the two.






# Book
* book <Effective Ruby: 48 Specific Ways to Write Better Ruby>
* video <EFFECTIVE RUBY> https://www.safaribooksonline.com/library/view/effective-ruby/9780134175416/part32.html
*
*
