# sum of all the multiples of 3 or 5 below 1000

def sum_multiples(max, num=1, sum=0)
  while num < max do
    sum += num if num % 3 == 0 || num % 5 == 0
    num += 1
  end
  puts sum
end

sum_multiples(1000)
#=>233168
