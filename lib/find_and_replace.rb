class FNDR
    def initialize(string)
        @input = string
    end

    def find_replace(find, replace)
        @input.split.map{|word| check_word(word, find, replace)}.join("")
    end

    def check_word(word, find, replace)
        (word == find) ? replace : word
    end

    def replace(word)
        if (@input.contains "sells")
end
