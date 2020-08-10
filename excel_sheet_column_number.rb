# @param {String} s
# @return {Integer}
def title_to_number(s)
  s = s.split('').map{|x| x.ord-64}
  ans = 0
  for x in 1..s.length
    ans += s[-x]*26**(x-1)
  end
  ans          
end
