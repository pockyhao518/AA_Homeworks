def first_anagram?(word, target) # O(n!)
    letters = word.split('').permutation.to_a
    letters.include?(target.split(''))
end

def second_anagram?(word, target) # O(n^2)
    word_arr = word.split('')
    target_arr = target.split('')
    word_arr.each do |letter|
        index = target_arr.index(letter)
        if !index.nil?
            target_arr.delete_at(index)
        end
    end
    target_arr.empty?
end

def third_anagram?(word, target) # O(n log n)
    word1 = word.split('').sort
    target1 = target.split('').sort

    word1 == target1
end

def fourth_anagram?(word, target) # O(n)
    hash1 = Hash.new(0)
    # hash2 = Hash.new(0)
    
    (0...word.length).each do |i|
        hash1[word[i]] += 1
    end
    (0...word.length).each do |i|
        hash1[target[i]] -= 1
    end

    hash1.all? { |k,v| v == 0 }
end

p fourth_anagram?("gizmo", "sally")    #=> false
p fourth_anagram?("elvis", "lives")    #=> true