class Foo
  def Foo::inherited(sub)
    printf "you made subclass of Foo, named %s\n", sub.name
  end
end
class Bar < Foo  # prints "you made subclass of Foo, named Bar"
end
