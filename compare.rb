require 'benchmark'
require './words'

class Compare
  attr_accessor :words
  attr_accessor :cycles

  def initialize(cycles)
    @cycles = cycles.to_i
    @words = WORDS.sample 50
  end
end

puts Benchmark.measure {
  output = ""
  compare = Compare.new(5_000)
  compare.cycles.times do
    compare.words.each{ |word| output << word.upcase }
  end

}
