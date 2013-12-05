require_relative 'grid'
require_relative 'euler_requires'
require 'benchmark'

# Largest Product in a Grid
# What is the greatest product of four adjacent numbers
# in the same direction (up, down, left, right, or diagonally)
# in the 20×20 grid?

grid = Grid.new
grid.create
grid.define_limits

n = 1
Benchmark.bm do |x|
  x.report {
    grid.calc_multi_max
  }
end

p grid.multi_max