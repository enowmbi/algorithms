def solution(a, k)
  return a unless a 
  return a if k == 0 
  1.upto k do 
    a.unshift(a.pop)
  end
  return a
end

