# @param {Integer[]} target
# @param {Integer[]} arr
# @return {Boolean}
def can_be_equal(target, arr)
  return target.sort == arr.sort ? true : false
end

=begin
#works if there are not duplicates in arr
def can_be_equal(target,arr)

    target_pointer = 0
    arr_pointer = 0
    while(target_pointer < target.length)
       if target[target_pointer] == arr[arr_pointer]
            target_pointer += 1
            arr_pointer += 1
        else
            #check if element pointed by target_pointer exists in arr
           if arr.include?(target[target_pointer])
                #get the index
               arr_index = arr.index(target[target_pointer])
                temp = arr[arr_pointer]
               arr[arr_pointer] = arr[arr_index]
                arr[arr_index] = temp
                target_pointer += 1
                arr_pointer += 1                
           else 
                return false
            end  
        end
    end
    return true
end
=end
