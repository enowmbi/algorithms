# @param {Integer} n
# @return {Integer}
def nth_ugly_number(n)
  numbers = [1]

  id2, id3, id5 = 0, 0, 0

  (n-1).times do
    likely_candidates = [ 2*numbers[id2], 3*numbers[id3], 5*numbers[id5] ]
    min = likely_candidates.min

    id2 += 1 if min == 2*numbers[id2]
    id3 += 1 if min == 3*numbers[id3]
    id5 += 1 if min == 5*numbers[id5]

    numbers << min
  end

  numbers[n-1]
end

