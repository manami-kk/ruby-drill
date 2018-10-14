# 完全数であれば "perfect"
# ほぼ完全数であれば "nearly"
# どちらでもなければ "neither"

def perfect?(num, result=[], i=1)
  while i < num
    result << i if num % i == 0
    i += 1
  end
  
  result_sum = result.inject(:+)

  if result_sum == num
    puts "perfect"
  elsif (num - result_sum).abs == 1
    puts "nearly"
  else
    puts "neither"
  end
end

perfect?(28)
perfect?(16)
perfect?(777)





