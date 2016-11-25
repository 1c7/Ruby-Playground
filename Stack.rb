class Stack

  def initialize
    @store = []
  end

  def push(x)
    @store.push x
  end

  def pop
    @store.pop
  end

  def peek
    @store.last
  end

  def empty?
    @store.empty?
  end

end

def paren_match(str)
  stack = Stack.new
  lsym = "{[(<"
  rsym = "}])>"
  str.each_char do |sym|
    if lsym.include? sym
      stack.push(sym)
    elsif rsym.include? sym
      top = stack.peek
      if lsym.index(top) != rsym.index(sym)
        return false
      else
        stack.pop
      end
      # Ignore non-grouped characters...
    end
  end
  # Ensure stack is empty...
  return stack.empty?
end

str1 = "(((a+b))*((c-d)-(e*f))"
str2 = "[[(a-(b-c))], [[x,y]]]"

p paren_match str1          # false
p paren_match str2          # true
