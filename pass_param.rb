def fun(a = nil, b = nil)
  p "a is #{a}"
  p "b is #{b}"
end


fun(3)
fun(b: 3)
fun(:b => 3)

# 没有办法进行指定， 无法直接传给 b
