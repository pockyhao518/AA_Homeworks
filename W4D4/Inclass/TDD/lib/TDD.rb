def my_uniq(array)
    raise ArgumentError if !array.is_a?(Array)
    arr = []
    array.each do |ele|
        if !arr.include?(ele)
            arr << ele
        end
    end
    arr
end

# p [1, 2, 1, 3, 3].uniq # => [1, 2, 3]
# p my_uniq([1,1,1,2,3,4])

class Array
    def two_sum
        result = []
        self[0...-1].each_with_index do |ele, i|
            (i+1..self.length - 1).each do |j|
                if ele + self[j] == 0
                    result << [i,j]
                end
            end
        end
        result
    end
end

# p [-1, 0, 2, -2, 1,2,4].two_sum # => [[0, 4], [2, 3], [3, 5]]

def my_transpose(array)
    raise ArgumentError if array[0].length != array.length
    result = Array.new(array.length){Array.new(array.length, [])}
    (0...array.length).each do |col|
        (0...array.length).each do |row|
            result[col][row] = array[row][col]
        end
    end
    result
end


# [4,4,9,1,7]   ele   price
#  0 1 2 3 4    index day
# which day we buy then sell got most profit     the biggest gap max = 6 pair [3,4]
def stock_picker(prices)
    raise ArgumentError if !prices.is_a?(Array)
    best = 0
    pair = [prices[0], prices[0]]
    prices.each_with_index do |buy_price, i|
        prices.each_with_index do |sell_price, j|
            profit = sell_price - buy_price
            if profit > best && i < j
                best = profit
                pair = [i, j]
            end 
        end
    end
    pair
end