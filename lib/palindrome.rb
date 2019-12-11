class Palindrome

    def initialize(input)
        @input = input
    end

    def cheat_mode()
        @input == @input.reverse
    end

    def palin()
        (@input.length/(2)).floor.times() do |i|
            if @input[0 + i] != @input[-1 - i]
                return false
            end
        end
        true
    end
end

p = Palindrome.new("racecar")
# puts p.cheat_mode()
puts p.palin()
