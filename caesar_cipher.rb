# caesar_cipher

def solve_cipher(char, num)
  alpha = ('a'..'z').to_a

  new_char =
    char.split("").map do |s|
      index = alpha.find_index(s)
      alpha[index - num]
    end.join("")

  puts new_char
end

solve_cipher("frqjudwxodwlrq", 3)
#=>congratulation
