class Bar

end

class Foo < Bar
  def foo
    p "foo"
  end
end

module ModuleFoo

end

p Foo.new

begin 
  ModuleFoo.new
rescue
  p 'module dont have new method'
end
