def brute_two_sum?(array, target)
    pairs = array.permutation(2)
    
    pairs.each do |pair|
        return true if pair.sum == target
    end
    false
end

def nlogn_two_sum?(array, target)
    sorted = array.sort
    
    
end

def bsearch(array, target)
    return array if array.length <= 1
    mid = array.length / 2

    case array[mid] <=> target
    when 0
        return mid
    when 1
        bsearch(array[0...mid], target)
    when -1
        result = bsearch(array[mid + 1..-1], target)
        result.nil? ? nil : result + mid + 1
    end
end



arr = [0, 1, 5, 7]
p brute_two_sum?(arr, 6)
p brute_two_sum?(arr, 10)

# two ranges, nested, come up with every possible pair, then check those OR permutations O(n!)
# sort then bsearch (n log n)
# how to do it with O(n)
# use array to make hash, hash[el] = target - el
# return true if hash[target - el]