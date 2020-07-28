# @param {Character[]} tasks
# @param {Integer} n
# @return {Integer}
def least_interval(tasks, n)
  counts = get_counts_of_tasks(tasks)

  time = 0
  while (counts[0] > 0)
    i = 0
    while (i <= n)
      if counts[0] == 0
        break
      end
      if (i < counts.length && counts[i] > 0)        
        counts[i] -= 1
      end
      time += 1
      i += 1
    end
    counts.sort!{|x,y| -(x <=> y)}
  end

  time
end

def get_counts_of_tasks(tasks)
  counts = {}
  tasks.each do |task|
    counts[task] ||= 0
    counts[task] += 1
  end

  counts.values.sort {|x,y| -x <=> y}
end

