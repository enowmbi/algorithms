# @param {String} a
# @param {String} b
# @return {String[]}
def uncommon_from_sentences(a, b)
    a_array = a.split(/ /)
    b_array = b.split(/ /)
    word_hash = {}
    a_array.each do |a_word|
        if word_hash.has_key?(a_word)
            word_hash[a_word] -= 1
        else
            word_hash[a_word] = 1
        end
    end
    b_array.each do |b_word|
        if word_hash.has_key?(b_word)
            word_hash[b_word] -= 1
        else
            word_hash[b_word] = 1
        end
    end
    return word_hash.keys.select{|item| word_hash[item] > 0 }
end
