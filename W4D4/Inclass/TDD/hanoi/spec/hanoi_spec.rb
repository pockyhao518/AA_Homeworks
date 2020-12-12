require "hanoi"
require "rspec"

describe Hanoi do
    subject(:game) {game = Hanoi.new(5)}
    # let(:build_tower) {game.build_tower}
    # (0...5).each {|i| @grid[0] << i + 1}
    
    describe "#initialize" do
         it "should accept integer as arg" do
            expect{Hanoi.new("5")}.to raise_error(ArgumentError)
         end

         it "should set grid" do
            expect(game.grid).to eq([[1,2,3,4,5],[],[]])
         end
    end
 
    describe "#build_tower" do
        it "should build a height level tower" do 
            # game.build_tower
            expect(game.grid).to eq([[1,2,3,4,5],[],[]])
        end
    end

    describe "#render" do
        it "should make pretty grid" do
            # game.build_tower
            expect(game.render).to eq("Tower 0: 1 2 3 4 5 Tower 1:  Tower 2: ")
        end
    end

    describe "#move" do
        it "should move first element from start tower to end tower" do
            # game.build_tower
            expect(game.move(0,1)).to eq([1])
        end
    end

    describe "#valid_move" do

        it "" do
        end
    end

    describe "#won?" do
        context "should return won or not" do
            it "should return true when won" do
                expect{@grid.first.empty? && @grid[1].empty?}.to eq(true)
            end

            it "should return false when is not won" do
            
            end
        end

    end


end