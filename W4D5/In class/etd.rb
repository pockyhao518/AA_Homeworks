def slow_my_min(array) # O(n^2)
    array.each  do |element1|
        count = 0
        array.each do |element2|
            if element1 <= element2
                count += 1
            end
        end
        return element1 if count == array.length
    end
end

# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]

def fast_my_min(array) # O(n)
    min = array[0]

    array.each do |element|
        if element <= min
            min = element
        end
    end

    min
end


# p fast_my_min(list)
# p slow_my_min(list)


def largest_contiguous_subsum(list)
    sub_arr = []
    (0...list.length).each do |index1|
        (index1...list.length).each do |index2|
            sub_arr << list[index1..index2]
        end
    end
    max = sub_arr[0].sum
    sub_arr.each do |element|
        max = element.sum if element.sum > max
    end
    max
end


# list = [5, 3, -7]
# p largest_contiguous_subsum(list) # => 8

# possible sub-sums
# [5]           # => 5
# [5, 3]        # => 8 --> we want this one
# [5, 3, -7]    # => 1
# [3]           # => 3
# [3, -7]       # => -4
# [-7]          # => -7


def fast_largest_contiguous_subsum(list)
    largest_sum = list[0]
    current_sum = list[0]
    (1...list.length).each do |i|
        current_sum = 0 if current_sum < 0
        current_sum += list[i]
        largest_sum = current_sum if current_sum > largest_sum
    end
    largest_sum
end

# list = [-5, -2, -3, -6, -7, -6, -7]
list = [-5, -1, -3]
p fast_largest_contiguous_subsum(list) # => 8 (from [7, -6, 7])

