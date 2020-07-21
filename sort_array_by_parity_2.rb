# @param {Integer[]} a
# @return {Integer[]}
def sort_array_by_parity_ii(a)
 odd, even = a.partition{|x| x.odd?}
    result = []
    count = 0
    while(count < a.length / 2)
        result << even[count]
        result << odd[count]
        count += 1
    end
    return result    
end

# def sort_array(arr)
  # partitions = arr.partition{|x| x.even? }

  # new_arr = []

  # 0.upto((arr.length / 2) - 1) do |i|
    # new_arr << partitions[0][i]
    # new_arr << partitions[1][i]
  # end

  # return new_arr

# end
