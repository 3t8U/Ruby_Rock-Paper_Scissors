class Test
    def find_replace(str, r, mode = :strict)
        find_replace_full(f, r, mode, :gsub)
    end

    def find_replace!(str, f, r, mode = :strict)
        find_replace_full(f, r, mode, :gsub!)
    end

    def find_replace_file(f, r, mode)
        File.write("lib/ps/answer.txt", find_replace_full(File.read("lib/ps/input.txt").strip(), f, r, mode))
    end

    private

    def find_replace_full(str, f, r, mode, type = :gsub)
        (mode == :strict ?
            str.send(type, " #{f} ", " #{r} ") :
            str.send(type, f, r)
        )
    end
end

test = Test.new

test.find_replace_file(/[aeiou]/i, "y", :loose)
