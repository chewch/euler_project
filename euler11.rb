require_relative 'table'
require_relative 'euler_requires'

# Largest Product in a Grid
# What is the greatest product of four adjacent numbers
# in the same direction (up, down, left, right, or diagonally)
# in the 20×20 grid?

table = Table.new
table.create
table.define_limits

table.calc_horizontal
table.calc_vertical
table.calc_diag_back
table.calc_diag_fwd

 p table.multi_max