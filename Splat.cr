def sum(*elements)
  elements.reduce(0){|sum,i| sum += i }
end

# sum 1, 2, 3    #=> 6
# sum 1, 2, 3, 4.5 #=> 10.5

def coords(**points)
  puts points
end

# coords(x: 7, y: 8, z: 0)    #=> {x: 7, y: 8, z: 0}

def diff(*elements : Int32)
  puts elements.reduce(10){|accum,i| accum -= i }
end

# diff(3,2,1)
# diff("foo", "bar")
