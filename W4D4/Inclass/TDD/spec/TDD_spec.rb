require 'rspec'
require 'TDD'

describe 'TDD' do
    describe 'my_uniq' do 
        # subject(:array) {[1,1,1,1,2,3]}
        it 'should accept an array as arg' do
            expect {my_uniq('o')}.to raise_error(ArgumentError)
        end

        it 'should remove dup element' do
            expect(my_uniq([1,1,1,2])).to eq([1,1,2].uniq)
        end
    end

    describe Array do 
        subject(:array) {array = [-1, 0, 2, -2, 1]}
        describe '#two_sum' do 
            it 'finds all pairs of positions where the elements at those positions sum to zero' do
            expect(array.two_sum).to eq( [[0, 4], [2, 3]])
            end

            it 'should sorted smaller index before bigger index' do
            expect(array.two_sum).to eq( [[0, 4], [2, 3]])
            end
        end
    end

    describe 'My Transpose' do 
        it 'should accept a square 2D array as arg' do
            expect{ my_transpose([[1,2,3],[1,2]]) }.to raise_error(ArgumentError)
        end

        it 'should convert between the row-oriented and column-oriented' do
            expect(my_transpose([[1,2],[1,2]])).to eq([[1,1],[2,2]])
            expect(my_transpose([[1,2],[0,0]])).to eq([[1,0],[2,0]])
            expect(my_transpose([[1,3],[1,3]])).to eq([[1,1],[3,3]])
        end
    end

    describe 'stock_picker' do
        it 'should accept a array as arg' do
            expect{ stock_picker(5)}.to raise_error(ArgumentError)
            expect{ stock_picker('5')}.to raise_error(ArgumentError)
        end

        it 'should outputs the most profitable pair of days for buy and sell' do
            expect(stock_picker([4,4,4,1,7])).to eq([3,4])

        end

        it 'should sell the stock after you buy' do 
            expect(stock_picker([4,7,9,1,4])).to eq([0,2])
        end
    end
end