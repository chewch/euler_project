require 'pry'
# Longest Collatz sequence
# Problem 14
# The following iterative sequence is defined for the set of positive integers:

# n → n/2 (n is even)
# n → 3n + 1 (n is odd)

# Using the rule above and starting with 13, we generate the following sequence:

# 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
# It can be seen that this sequence (starting at 13 and finishing at 1) contains
# 10 terms. Although it has not been proved yet (Collatz Problem), it is thought
# that all starting numbers finish at 1.

# Which starting number, under one million, produces the longest chain?

# NOTE: Once the chain starts the terms are allowed to go above one million.
maxCollatz = 0
maxCollatzTerm = 0
collatzCount = 0

(2..1000000).each do |x|

  n = x
  while n != 1
    (n % 2).zero? ? n = n / 2 : n = 3 * n + 1
    collatzCount += 1
  end
  # set largest term
  if collatzCount > maxCollatz
    maxCollatz = collatzCount
    maxCollatzTerm = x
  end
  # reset and add 1 to count starting point
  collatzCount = 1

end

puts "Max: #{maxCollatz}, Max Term: #{maxCollatzTerm}"
