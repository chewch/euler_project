require_relative 'euler_requires'

# Smallest Multiple
# 2520 is the smallest number that can be divided by each of the numbers
# from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of
# the numbers from 1 to 20?
def euler5
  is_min_div = false
  index = 1

  while !is_min_div
    num = index * 20
    if (num % 20).zero? && (num % 19).zero? && (num % 18).zero? &&
      (num % 17).zero? && (num % 16).zero? && (num % 15).zero? &&
      (num % 14).zero? && (num % 13).zero? && (num % 12).zero? &&
      (num % 11).zero?
        p num;
        break;
    end
  index = index + 1
  end
end
euler5

# one liner, note: study inject & collect
# require 'rational'
# num = (1..20).inject(1) { |result, n| result.lcm n }
# puts "Smallest evenly divisible number is #{ num }."
