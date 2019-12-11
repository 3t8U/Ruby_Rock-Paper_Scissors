require ('rspec')
require ('find_and_replace.rb')

describe('find_and_replace') do
    it( "Returns a new string replaced with words replaced") do
        str = Finder.new("She sells sea shells by the sea shore")
        expect(str.find_replace("sea", "seal")).to(eq("She sells seal shells by the seal shore"))
    end
end
