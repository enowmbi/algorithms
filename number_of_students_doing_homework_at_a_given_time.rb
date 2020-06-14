# @param {Integer[]} start_time
# @param {Integer[]} end_time
# @param {Integer} query_time
# @return {Integer}
def busy_student(start_time, end_time, query_time)
    start_time_pointer = 0
    end_time_pointer = 0
    query_count = 0
    while(start_time_pointer < start_time.length && end_time_pointer < end_time.length)
       if query_time.between?(start_time[start_time_pointer],end_time[end_time_pointer])
           query_count += 1
       end
        start_time_pointer += 1
        end_time_pointer += 1
        
    end
    return query_count
end
