# Write a method named get_squares that takes an array of numbers
# and returns a sorted array containing only the numbers whose square is also in the array
#
# get_squares [9]                      # => []
# get_squares [9,3]                    # => [3]
# get_squares [9,3,81]                 # => [3, 9]
# get_squares [25, 4, 9, 6, 50, 16, 5] # => [4, 5]

# This time you will have to define the method, it's called: get_squares

def get_squares(nums)
  nums.select { |n| nums.include? n*n }.sort
end


#I want the square number
#if there is a number in the array that is equal to n * n then I want to append the original square number
#pseudocode:
#I have an array
#I check each element against the original array to see if the array contains any of its squares
#
#if it does then i want to push those characters into a new array
# I the want to return that array
