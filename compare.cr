require "benchmark"
require "./words"

class Compare
  property cycles : Int32
  property words : Array(String)

  def initialize(cycles : Int32)
    @cycles = cycles.to_i
    @words = WORDS.sample 50
  end
end

puts Benchmark.measure {
  output = ""
  compare = Compare.new(5_000)
  compare.cycles.times do
    compare.words.each{ |word| output += word.upcase }
  end

}
