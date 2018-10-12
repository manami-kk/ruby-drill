# 1から9までの任意の数字が書かれた4枚のカードを並べて、2桁の数字 ＋ 2桁の数字　を計算する時の最大値を求める。
# 例： "2 9 3 8" の場合、 93 + 82　= 175
# 例： "7 8 7 7" の場合、 87 + 77　= 164

input = "2 9 3 8"
numbers = input.split(" ").map(&:to_i)
sorted_numbers = numbers.sort.reverse
puts (sorted_numbers[0] + sorted_numbers[1]) * 10 + sorted_numbers[2] + sorted_numbers[3]
