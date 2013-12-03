require_relative 'euler_requires'

#The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
#Find the sum of all the primes below two million
sum = 0
Prime.each do |prime|
  if (prime >= 2000000)
    p sum
    break
  else
    sum = sum + prime
  end
end