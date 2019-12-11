class Palindrome
    def cheat_mode(input)
        input == input.reverse
    end

    def palin(input)
        input = input.to_s
        (input.length/(2)).floor.times() do |i|
            if input[0 + i] != input[-1 - i]
                return false
            end
        end
        true
    end
end

p = Palindrome.new()
# puts p.cheat_mode()
puts p.palin(1221)
