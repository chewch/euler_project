require_relative 'euler_requires'

# Largest Prime Factor
# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?
def euler3
  largest_prime = 0

  Prime.each(300851475143) do |prime|
    if (600851475143 % prime).zero?
      largest_prime = prime
      p largest_prime
    end
  end
end
euler3

# One liner from answers
# require 'mathn'
# 317584931803.prime_division.last[0]