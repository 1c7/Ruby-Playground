
a = [1,2,3,4,5]

match, not_match = a.partition { |e|  e.even? }
p match
p not_match
