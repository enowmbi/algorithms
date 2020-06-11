def backspace_string_compare(s,t)
  s_pointer = s.length - 1
  t_pointer = t.length - 1

  s_skips = 0
  t_skips = 0

  while((s_pointer >= 0) || (t_pointer >= 0))
    while(s_pointer <= 0)
      if s[s_pointer] == '#'
        # s.sub!('#','')
        s_skips += 1
        s_pointer -= 1
      else
        if s_skips > 0 
          # s.sub!(s[s_pointer],'')
          s_skips -= 1
          s_pointer -= 1
        else
          break
        end
      end
    end

    while(t_pointer <= 0)
      if t[t_pointer] == '#'
        # t.sub!('#','')
        t_skips += 1
        t_pointer -= 1
      else
        if t_skips > 0 
          # t.sub!(s[t_pointer],'')
          t_skips -= 1
          t_pointer -= 1
        else
          break
        end
      end
    end

    if(s_pointer >= 0 && t_pointer >= 0 && s[s_pointer] != t[t_pointer])
      return false
    end
    if((s_pointer >= 0) != (t_pointer >= 0))
      return false
    end

    s_pointer -= 1
    t_pointer -= 1
  end 
  return true 
end


