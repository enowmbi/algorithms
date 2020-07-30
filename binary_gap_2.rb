# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(n)
	n_binary = n.to_s(2)

	current_count = 0
	max_count = 0
	start_counting = false
	(n_binary.size - 1).downto(0) do |i|
		if n_binary[i] == '1' && start_counting == false
			start_counting = true
		elsif n_binary[i] == '0' && start_counting == true
			current_count += 1
		elsif n_binary[i] == '1' && start_counting == true      
			max_count = current_count if max_count < current_count
			current_count = 0
		end
	end
	return max_count 
end
