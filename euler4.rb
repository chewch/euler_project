require_relative 'euler_requires'

# Largest Palindrome Product

# A palindromic number reads the same both ways. The largest
# palindrome made from the product of two 2-digit numbers is
# 9009 = 91 × 99.
# Find the largest palindrome made from the product of two
# 3-digit numbers.
def euler4

  for i in 900..999
    for j in 900..999
      max_panlindrome = i * j if (i*j).to_s == (i*j).to_s.reverse
    end
  end

end
euler4
