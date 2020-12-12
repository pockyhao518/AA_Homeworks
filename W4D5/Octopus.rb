fish = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
# => "fiiiissshhhhhh"

    
def sluggish(arr)
    max = ''
    arr.each_with_index do |ele1|
        arr.each_with_index do |ele2|
            if ele1.length >= ele2.length
                max = ele1
            else
                max = ''
            end 
        end
    end
    max
end

def dominant(arr)
    new_arr = merge(arr)
    new_arr[-1]
end

def merge(arr)
    return arr if arr.length < 2
    mid = arr.length / 2
    left = arr[0...mid]
    right = arr[mid..-1]
    merge_sort(merge(left) , merge(right))
end

def merge_sort(left, right)
    result = []
    until left.empty? || right.empty?
        if left[0].length > right[0].length
            result << right.shift
        else
            result << left.shift
        end
    end
    result + left + right
end

def clever(arr)
    max = arr[0]
    arr.each do |ele|
        if ele.length > max.length
            max = ele
        end
    end
    max
end

# p sluggish(fish)
# p dominant(fish)
# p clever(fish)

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

def slow_dance(dir, tiles)
    index = -1
    tiles.each_with_index do |tile, i|
        if tile == dir
            index = i
        end
    end
    index
end

new_tiles = {"up" => 0, "right-up"=> 1, "right"=> 2, "right-down"=> 3, "down"=> 4, "left-down"=> 5, "left"=> 6,  "left-up" => 7}

def fast_dance(dir, tiles)
    tiles[dir]
end

p slow_dance("up", tiles_array)
p slow_dance("right-down", tiles_array)
p fast_dance("up", new_tiles)
p fast_dance("right-down", new_tiles)