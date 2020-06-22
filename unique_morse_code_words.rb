def unique_morse_code_words(array_of_words)
  #given a morse code sequence, return unique transformations(words converted to morse codes) from the array of words
  #eg. if given ["zen","pen","pie"], and each word when transformed into morse codes are the same, return 1 else return count of indiv transformations
  #a hash set or hash table will be useful in this case. Copy and paste morse codes from problem into hash of morse_codes
  morse_codes = {'a' => '-','b' =>'--','c'=>'__'} #this is not a complete table with the mappings of characters to morse code

  # transformed_words = {} we are using a hash to store transformed words because we don't want duplicates
  transformed_words = {} 

  #iterate through each word and do the transformations
  array_of_words.each do |word|
    transformed_word =''
    word.each_char do |char|
      transformed_word += morse_codes[char]
    end

    if(!transformed_words.has_key?(transformed_word)) #ensures uniqueness in transformed_words hash
      transformed_words[transformed_word] = 1
    end
  end

  return transformed_words.length
end

#we check before we write to transformed_words hash to save ourself the overhead of writing to hash --overridding if a hash key already exits, we could skip the check and it will return thesame
