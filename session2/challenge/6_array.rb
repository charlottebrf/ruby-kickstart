# Write a method named prime_chars? which takes array of strings
# and returns true if the sum of the characters is prime.
#
# Remember that a number is prime if the only integers that can divide it with no remainder are 1 and itself.
#
# Examples of length three
# prime_chars? ['abc']            # => true
# prime_chars? ['a', 'bc']        # => true
# prime_chars? ['ab', 'c']        # => true
# prime_chars? ['a', 'b', 'c']    # => true
#
# Examples of length four
# prime_chars? ['abcd']           # => false
# prime_chars? ['ab', 'cd']       # => false
# prime_chars? ['a', 'bcd']       # => false
# prime_chars? ['a', 'b', 'cd']   # => false


class Integer
  def prime_num?
    return false if self < 2
    2.upto Math.sqrt(self) do |i|
      return false if self % i == 0
    end
    true
  end
end

def prime_chars?(strings)
  strings.join.length.prime_num?
end

#Many attempts at this one- the boolean logic just was not there, the logic plugging together different elements of the problem. Along side use of Math.sqrt

# def prime_chars?(array)
#   array = array.join
#   array = array.split("")
#   counted_array = array.count.to_i
#
#   counted_array.reject {}
#     result = counted_array / 2
#     if result.class == Float
#       true
#     elsif result == 2
#       if result / 1 == 1
#         true
#       else
#         false
#       end
#     end
#   end


#     counted_array  = counted_array / 2
#     if counted_array .class == Float || counted_array == 2
#       counted_array = counted_array / counted_array
#       if counted_array == 1 && counted_array / 1 == counted_array
#         true
#       elsif counted_array > 1
#         false
#       end
#     end
#   end
#
# prime_chars?['abcd']

# def get_squares(nums)
#   nums.select { |n| nums.include? n*n }.sort
# end

# def prime_chars?(array)
#   p array = array.join
#   p array = array.split("")
#   p counted_array = array.count
#   if (counted_array / 2) == Float
#     result1 = counteded_array / counted_array
#     result2 = counted_array / 1
#     if result1 == 1 && result2 == counted_array
#       true
#       end
#     else
#       false
#   end
# end


#   if result1.is_a? Float
#     result2 = counted_array % counted_array
#     result3 = counted_array % 1
#
#     if (counted_array / 2).is_a Integer?
#       false
#
#
#
#     counted_array / 1 == 0 && counted_array % counted_array == 0 #this maths & logic is wrong - need to double check
#     true
#   else
#     false
#   end
# end



# Write a method named prime_chars? which takes array of strings
# and returns true if the sum of the characters is prime.
# Remember that a number is prime if the only integers that can divide it with no remainder are 1 and itself.
