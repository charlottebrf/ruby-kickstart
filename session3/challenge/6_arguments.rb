# Write a method, match_maker, which will receive an unknown number of
# elements, and return an array where every two elements are represented by true or false.
#
# The very first parameter will not be part of this set. Instead, it will tell
# you how to determine what their value should be.
# If it is true, then they will be true when they are oppositely truthy.
# If it is false, then they will be true when they are similarly truthy.
#
# Examples:
# match_maker false, true,  true                # => [true]
# match_maker true,  true,  true                # => [false]
# match_maker true,  false, false               # => [false]
# match_maker true,  false, true                # => [true]
# match_maker true,  true,  false               # => [true]
# match_maker true,  true,  true, false, true   # => [false, true]
# match_maker true,  true,  true, false, nil    # => [false, false]
# match_maker true,  true,  true, true, nil     # => [false, true]
# match_maker true,  true,  true, 0, nil        # => [false, true]


# Write a method, match_maker, which will receive an unknown number of
# elements, and return an array where every two elements are represented by true or false.
#
# The very first parameter will not be part of this set. Instead, it will tell
# you how to determine what their value should be.
# If it is true, then they will be true when they are oppositely truthy.
# If it is false, then they will be true when they are similarly truthy.
#
# Examples:
# match_maker false, true,  true                # => [true]
# match_maker true,  true,  true                # => [false]
# match_maker true,  false, false               # => [false]
# match_maker true,  false, true                # => [true]
# match_maker true,  true,  false               # => [true]
# match_maker true,  true,  true, false, true   # => [false, true]
# match_maker true,  true,  true, false, nil    # => [false, false]
# match_maker true,  true,  true, true, nil     # => [false, true]
# match_maker true,  true,  true, 0, nil        # => [false, true]

def match_maker(opposites_attract, *elements)
  to_return = []
  elements.each_slice 2 do |first, last|
    first = !!first
    last = !!last
    result = if opposites_attract
              first != last
            else
              first == last
            end
            to_return << result
          end
          to_return
        end


#My attempt below- need to improve on logic, iteration - went down a rabbit hole with all the truthy falsey options
#Need to keep in mind that in ruby everything is true, unless its false
# match_maker(boolean, *args)
#better understand the difference between .each_slice .each_cons(num)

# def match_maker(boolean, *args)
#
#   result = []
#   if first_parameter == true
#     array.each_cons(2) do |a, b|
#     if [a, b] != [true, true] || if [a, b] == [false, false] || if [a, b] == [false, nil]
#         result << [false]
#     elsif [a, b] == [false, true] || if [a, b] == [true, false]  || if [a, b] == [true, nil] || if [a, b] == [0, nil]
#         result << [true]
#       end
#     end
#
#
# # if a == b it's true (unless bool == true)
# # and if a != b it's false (unless bool == false)...
#
# # a == b > true
# # a != b > false
#
#
#   # elsif first_parameter == false
#   # array.each_cons(2) do |a, b|
#   #   if [a, b] == [true, true] || if [a, b] == [0, nil] || if [a, b] == [true, nil]
#   #     result << [true]
#   #   end
#   #   end
#   # # else first_parameter == 0 || nil
#   # #     array.each_cons(2) do |a, b|
#   # #   if [a, b] == [true, true]
#   # #     result << [a]
#   #   end
#     end
#       result
#
#   end
#
#
#   p result = result.flatten
#   p result
# end
#
# end
# match_maker ([true,  true,  true, true, nil])


  # first_parameter = array[0]
  # p first_parameter
  # array.shift
  # p array


  #return an array where every 2 elements are represented by true or false
  #ignore first parameter in true or false
  #if first parameter is true - then looking for 2 x false
  #if first parameter

 #return an array where every 2 elements are represented by true or false
 #ignore first parameter in true or false
 #if first parameter is true - then looking for 2 x false
 #if first parameter
