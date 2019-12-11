class Testing
    attr_reader(:input)
    def initialize(string)
        @input = string
    end

    def find_replace(find, replace, mode = :strict)
        find_replace_full(find, replace, mode, :gsub)
    end

    def find_replace!(find, replace, mode = :strict)
        find_replace_full(find, replace, mode, :gsub!)
    end


    private

    def find_replace_full(find, replace, mode, type)
        (mode == :strict ?
            @input.send(type, " #{find} ", " #{replace} ") :
            @input.send(type, find, replace)
        )
    end
end

[].send(methodToUse, arg1, arg2, ... )
[].methodToUse(arg1, arg2, ...)
