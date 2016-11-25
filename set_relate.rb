require 'set'
x = Set[1,2,3]
y = Set[3,4,5]

p a = x.union(y)    # Set[1,2,3,4,5]
p b = x | y         # same
p c = x + y         # same


x = Set[1,2,3]
y = Set[3,4,5]
a = x.intersection(y)    # Set[3]
b = x & y                # same


s = Set[1,2,3,4,5,6]
s.empty?              # false
s.clear
s.empty?              # true

numbers = Set[1,2,3,4,5,6,7,8,9,0]
set = numbers.divide{|i| i % 2}
p set #  #<Set: {#<Set: {1, 3, 5, 7, 9}>, #<Set: {2, 4, 6, 8, 0}>}>
