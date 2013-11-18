require_relative 'euler_requires'

# Sum square difference

# The sum of the squares of the first ten natural numbers is,
# 1^2 + 2^2 + ... + 10^2 = 385

# The square of the sum of the first ten natural numbers is,
# (1 + 2 + ... + 10)^2 = 55^2 = 3025

# Hence the difference between the sum of the squares of the first ten
# natural numbers and the square of the sum is 3025 − 385 = 2640.

# Find the difference between the sum of the squares of the first
# one hundred natural numbers and the square of the sum.
sq_sum = ((1..100).inject(0) { |result, element| result + element })**2
sum_sqs = (1..100).inject(0) { |result, element| result + element**2 }
p sq_sum - sum_sqs

# another solution..
# (1 + 2 + ... + n)^2 = n^2 * (n+1)^2 * 1/4
# 1^2 + 2^2 + ... + n^2 = n * (n+1) * (2n+1) * 1/6
n = 100
sq_sum = n**2 * ((n+1)**2)/4
sum_sqs = n * ((n+1) * (2*n+1))/6
p sq_sum - sum_sqs

# require 'mathn'
# n = 100
# puts "Difference is #{ (n * (n**2 - 1) * (n / 4 + 1 / 6)).abs }."