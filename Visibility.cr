class Visibility

  def initialize(foo = "bar")
    @foo = foo
  end

  def foo
    @foo
  end

  private def large
    @foo.upcase
  end

end


obj = Visibility.new
puts obj.foo
puts obj.large
