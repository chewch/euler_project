require_relative 'euler_requires'

# Mult of 3 and 5
# If we list all the natural numbers below 10 that are multiples
# of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.
def euler1
  sum = 0;
  1..1000.times do |x|
    y = x + 1
    if (x % 3).zero? || (x % 5).zero?
      sum = sum + x
    end
  end
  p sum
end
euler1