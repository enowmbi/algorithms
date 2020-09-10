# @param {String} secret
# @param {String} guess
# @return {String}
def get_hint(secret, guess)
	bulls = 0
	cows = 0
	potential_cows = []  

	secret_hash = secret.chars.reduce(Hash.new(0)) { |hash, val| hash[val] += 1; hash }  

	secret.chars.each.with_index do |n, i|
		if secret[i] == guess[i]
			bulls += 1
			secret_hash[guess[i]] -= 1  
		elsif secret_hash.has_key?(guess[i])
			potential_cows << guess[i]
		end
	end

	potential_cows.each do |pc|
		if secret_hash.has_key?(pc) && secret_hash[pc] > 0
			cows += 1
			secret_hash[pc] -= 1  
		end
	end  

	"#{bulls}A#{cows}B"  
end
