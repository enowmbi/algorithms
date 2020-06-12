# @param {String} s
# @return {String}
def reverse_vowels(s)
    #use two pointer technique
    head = 0
    tail = s.length - 1
    vowels = ['a','e','i','o','u','A','E','I','O','U']
    while(tail > head)
        if vowels.include?(s[head]) && vowels.include?(s[tail])
        temp = s[head]
        s[head] = s[tail]
        s[tail] = temp
        head += 1
        tail -= 1
        elsif vowels.include?(s[head]) && !vowels.include?(s[tail])
            #decrement tail
            tail -= 1
        elsif vowels.include?(s[tail]) && !vowels.include?(s[head])
            #increment head
            head += 1
        else
            tail -= 1
            head += 1
        end
    end
    return s
       
end
