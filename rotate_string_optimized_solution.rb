# @param {String} a
# @param {String} b
# @return {Boolean}
def rotate_string(a, b)
    a.length == b.length   && (a * 2).include?(b)
end

#note
#make sure the strings have thesame length 
#a * 2 == ab[cdeab]cde which contains cdeab
