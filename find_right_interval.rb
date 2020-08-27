# @param {Integer[][]} intervals
# @return {Integer[]}
def find_right_interval(intervals)
  starts = intervals.map.with_index { |interval, i| [interval.first, i] }.sort
  intervals.map { |interval| (starts.bsearch { |s, i| s >= interval.last } || [-1])[-1] }
end
