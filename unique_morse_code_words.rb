def unique_morse_representations(words)    
  morse_representations_arr = [".-","-...","-.-.","-..",".","..-.","--.","....","..",".---","-.-",".-..","--","-.","---",".--.","--.-",".-.","...","-","..-","...-",".--","-..-","-.--","--.."]    
  transformations = {}     
  words.each do |word|
    transformed_word = ""
    word.each_char do |char|
      transformed_word += morse_representations_arr[char.ord - 97]
    end     
    transformations[transformed_word] = word     
  end    
  return transformations.length    
end

#we could check before we write to transformed_words hash to save ourself the overhead of writing to hash --overridding if a hash key already exits, we could skip the check and it will return thesame
