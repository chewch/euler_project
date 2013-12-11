# Large Sum
# Work out the first ten digits of the sum of the following one-hundred 50-digit numbers.

File.open("euler13.txt", "r") do |f|
  big_num = f.read.split("\n")
  f.close
  big_sum = 0
  big_num.each do |num|
    big_sum += num.to_i
  end
  puts big_sum.to_s.scan(/\d/)[0,10].join.to_i
end



