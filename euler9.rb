require_relative 'euler_requires'

#A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

#a^2 + b^2 = c^2
#For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

#There exists exactly one Pythagorean triplet for which a + b + c = 1000.
#Find the product abc.

a = 0
b = 0
c = 0;
sum = 1000;
found = false;
for a in 1..(sum-1 / 3) do
  for b in a..(sum / 2) do
    c = sum - a - b
    if (a * a + b * b == c * c)
        found = true
        break
    end
  end
  break if (found)
end
p "a:" + a.to_s
p "b:" + b.to_s
p "c:" + c.to_s
p "a*b*c=" + (a*b*c).to_s

