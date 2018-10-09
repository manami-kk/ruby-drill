# By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

def fibo_even_sum(max, a=1, b=2)
  sum = 0
  while true do
    sum += a if a.even?
    a, b = b, a + b
  break if a >= max
  end
  puts sum
end

fibo_even_sum(4000000)
#=>4613732

#NOTE:フィボナッチ数列とは、初項と第2項を1とし、第3項以後次々に前2項の和をとって得られる数列。
# つまり、
# 　F1＝1, F2＝1, F(n＋1)＝Fn＋F(n-1)
# 　(n＝2, 3, 4,……)
# で表される。
