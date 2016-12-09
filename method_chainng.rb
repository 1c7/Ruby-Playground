=begin
  链式调用
=end

class Person

  def name(value)
    @name = value
    self
  end

  def age(value)
    @age = value
    self
  end

  def introduce
    puts "Hello, my name is #{@name}, and I am #{@age} years old."
  end

end
# person = Person.new
# p person.name("a").age(22).introduce


#========================

class Speaker
  class << self

    def say(what)
      @say = what
      self
    end

    def drink(what)
      @drink = what
      self
    end

    def output
      "The speaker drinks #{@drink} and says #{@say}"
    end

  end
end

p Speaker.say('hello').drink('water').output
