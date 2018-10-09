#baseball

scores = []

n = gets.to_i

i = 1
while i < n do
    piching = gets.to_s

    scores << piching

    if (scores.count {|score| score == "strike" }) == 3
        puts "out!"

    elsif (scores.count {|score| score == "ball" }) == 4
        puts "fourball!"

    else
        puts "strike!" if piching == "strike"
        puts "ball" if piching == "ball"
    end
    i += 1
end
