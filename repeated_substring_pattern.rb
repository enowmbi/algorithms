# @param {String} s
# @return {Boolean}
def repeated_substring_pattern(s)
    return false if s.empty?
    return false if s.size == 1
    (0...s.size/2).each do |i|
        tmp = s[0..i]
        if 0 == s.size%tmp.size
            return true if s == tmp * (s.size/tmp.size)
        end
    end
    false
end
