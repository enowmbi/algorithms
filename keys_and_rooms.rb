def can_visit_all_rooms(rooms)
  keys_seen = Array.new(rooms.length,false) #initial state: no key seen yet
  keys_seen[0] = true  #room zero is accessible so it's key is seen =>set it to true
  stack_of_keys = []
  stack_of_keys << 0   #add key 0 to open the 0th room

  while(!stack_of_keys.empty?)
    current_key = stack_of_keys.pop
    rooms[current_key].each do |key|
      if (!keys_seen[key])
        keys_seen[key] = true
        stack_of_keys << key
      end
    end
  end

  #traverse the keys_seen and return true if all keys_seen are true else false
  keys_seen.each do |key_seen|
    if(key_seen != true)
      return false
    end
  end

  return true

end

#use the following test cases :
#[[1],[2],[3],[0]]  => should return true
#[[1,3],[3,0,1],[2],[0]]  => should return false
#[[1,3],[3,0,2],[2],[0]]  => should return false
