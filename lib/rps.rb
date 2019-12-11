class RPS
    @@convert = {rock: 0, paper: 1, scissors: 2}
    @@wins =[[:tie, :paper, :rock], [:paper, :tie, :scissors], [:rock, :scissors, :tie]]

    def quickplay(p1, p2)
        @@wins[@@convert.fetch(p1)][@@convert.fetch(p2)]
    end

    def play_cpu(p)
        outcome = @@wins[rand(3)][@@convert.fetch(p)]
        return "Digital Stalemate" if (outcome == :tie)
        (outcome == p) ? "Connect Four!" : "SKyNet has launched"
    end

    def play
        p1 = @@convert.fetch(File.read("lib/ps/p1.txt").strip.to_sym)
        p2 = @@convert.fetch(File.read("lib/ps/p2.txt").strip.to_sym)
        outcome = @@wins[p1][p2]
        File.write("lib/ps/result.txt", "#{(outcome == :tie) ? "Nobody" : outcome.to_s.capitalize} wins!\n", mode:"a")
        return outcome
    end
end

game = RPS.new()
