

class Hash
   def to_struct
      Struct.new(*keys).new(*values)
   end
end

h = {:name=>"Dan","age"=>33,"rank"=>"SrA","grade"=>"E4"}
s = h.to_struct("Foo")
## no methd error
