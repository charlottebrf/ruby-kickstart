# Given a nonnegative integer, return a hash whose keys are all the odd nonnegative integers up to it
# and each key's value is an array containing all the even non negative integers up to it.
#
# Examples:
# staircase 1  # => {1 => []}
# staircase 2  # => {1 => []}
# staircase 3  # => {1 => [], 3 => [2]}
# staircase 4  # => {1 => [], 3 => [2]}
# staircase 5  # => {1 => [], 3 => [2], 5 =>[2, 4]}

def staircase(num)
  range_array = []
  range = (1..num).to_a #these are all of my keys
  p range
  odds_key = range.select { |num| num.odd? }
  p odds_key

  evens_value = []
  odds_key.each do |odd_num|
    odds_range = (1..odd_num).to_a
    evens_value << odds_range.select { |num| num.even? }
  end
   p evens_value

  #  << that shovels whatever is on the right as a single thing. See if there is a method on array that can add all the elements from one array to another

  # http://stackoverflow.com/questions/1801516/how-do-you-add-an-array-to-another-array-in-ruby-and-not-end-up-with-a-multi-dim

  p odds_evens_key = {odds_key => evens_value}
end

staircase(3)

#given an integer
#take this integer & create a new array of all the non
#then need to get the range of all the non-negative integers that make up that number
#create a new array with all of these integers
#for each of these integers loop over them in turn to give the range of all the non-negative integers that make up that number
#shovel these into a new array
#take this new array & select only the even numbers, greater than 1
#take this array & create a hash key for the original integer => [array of evens]
#merge these individual hash keys into a single hash key & return
