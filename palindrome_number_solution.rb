def palindrome_number(integer_number)
 #could you solve it without converting the integer to string
   if integer_number == 0
     return true
   end
   if integer_number < 0 || integer_number % 10 == 0
     return false
   end

   reversed_int = 0
   while(integer_number > reversed_int)
     pop = integer_number % 10
     integer_number = integer_number / 10
     reversed_int = (reversed_int * 10) + pop
   end

   return ((integer_number == reversed_int) || (integer_number == reversed_int / 10))

end

def palindrome_number_using_string(integer_number)
  str_number = integer_number.to_s
  return str_number == str_number.reverse ? true : false
end
