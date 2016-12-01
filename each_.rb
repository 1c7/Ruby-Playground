

a = [1,2,3,4,5]

a.each_cons(2).each do |x|
  p x
end

a.each_slice(2).each do |y|
  p y
end
