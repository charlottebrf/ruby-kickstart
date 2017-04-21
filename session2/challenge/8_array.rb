# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three?(elements)
  elements.each_cons 3 do |prev, curr, nxt|
    return true if prev == curr && curr == nxt
  end
  false
end



#Outstanding: so now I have them in groups of 3- how do I iterate over each one to check if each  element is the same?
# An attempt that nearly got there but which didn't get to the boolean:
#
# def got_three?(array)
#   new_array = []
#   array.each_cons(3) { |prev, curr, nxt| new_array << [prev, curr, nxt] }
#   new_array
# end
#
# got_three([1, 2, 2, 2, 3])
#
#
# Another long-winded attempt:
# def got_three?(array)
#   new_array = []
#   array.each_cons(3) { |prev, curr, nxt| new_array << [prev, curr, nxt] }
#   p new_array
#   new_array.each_with_index do |element, index|
#     new_array << element == new_array[index -1] && new_array[index + 1]
#    end
#    p new_array
#
#    new_array.select
#
#   triple = "triple!"
#   no_triple = "none"
#   new_array.each_slice(3) do |a,b,c|
#     if [a,b,c] == [a,b,c]
#       "triple!" >> triple
#     else
#       "none" >> no_triple
#   end
# end
#
# if triple == "triple!"
#   true
# else
#   false
# end
#
# end
#
#
# got_three?([1, 2, 2, 2, 4, 3])
#
#
#

# def got_three?(array)
#   new_array = []
#   array.each_cons(3) { |prev, curr, nxt| new_array << [prev, curr, nxt] }
#   p new_array
#   new_array.each_with_index do |element, index|
#     new_array << element == new_array[index -1] && new_array[index + 1]
#    end
#    p new_array
#   #   else
#   #   p false
#   #   end
#   # end
# end


# def got_three?(array)
#   new_array = []
#   array.each_cons(3) do |prev, curr, nxt|
#     if [prev, curr, nxt] == [prev, curr, nxt]
#       new_array.push([prev, curr, nxt])
#     end
#   end
#   new_array = new_array.count
#   if new_array == 3
#     true
#   else
#     false
#   end
# end
