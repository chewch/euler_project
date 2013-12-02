require_relative 'euler_requires'

#The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
#Find the sum of all the primes below two million

Prime.each do |prime|
  if ((eval prime.to_s.split("").map(&:to_i).join("+")) >= 2000000)
    p prime
    break
  end
end