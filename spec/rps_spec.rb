require('rspec')
require('rps.rb')

describe('RPS') do

    before:each do
        srand(3)
    end

  it("returns a win of rock for player 2") do
    game = RPS.new()
    expect(game.quickplay(:scissors, :rock)).to(eq(:rock))
  end

  it("returns a win for either the computer or player") do
    game = RPS.new()
    expect(game.play_cpu(:rock)).to(eq("Connect Four!"))
  end

  it("returns a win for p1 or p2") do
    game = RPS.new()
    expect(game.play).to(eq(:paper))
  end

end
