# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
	char_hash = {}
	s.each_char do |char|
		if char_hash.has_key? char
			char_hash[char] += 1
		else
			char_hash[char] = 1
		end
	end

	t.each_char do |char|
		if char_hash.has_key? char
			char_hash[char] -= 1
		else
			char_hash[char] = 1
		end
	end  
	return char_hash.select{|k,v| v > 0 }.size > 0 ? false : true     
end
