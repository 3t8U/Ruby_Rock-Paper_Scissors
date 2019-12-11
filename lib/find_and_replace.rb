class Finder
    def initialize(string)
        @input = string
    end

    def read_file(f, r)
        File.write("lib/ps/answer.txt", find_replace(f, r, File.read("lib/ps/input.txt").strip()))
    end

    def find_replace(f, r, text = @input)
        text.split.map{|word| check_word(word, f, r)}.join(" ")
    end

    def check_word(word, f, r)
        (word == f) ? r : word
    end
end

str = Finder.new("This is a test string")
puts str.find_replace("a", "b")
str.read_file("in", "123456")
