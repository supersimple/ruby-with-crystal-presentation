class Foo
  # We prefer getter, setter and property
  getter :value

  def initialize(val : String)
    @value = val
  end
end

foo = Foo.new("bar")
puts foo.value

class Bar
  property :value
  def initialize(val : String)
    @value = val
  end
end

bar = Bar.new("baz")
puts bar.value
bar.value = "foo"
puts bar.value
