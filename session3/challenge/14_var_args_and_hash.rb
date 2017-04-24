# You have two different problems to solve, you must get which one it is from a hash
# The default value for the hash should be :count_clumps
# If no hash is provided, choose count_clumps
#
# PROBLEM: count_clumps
# Say that a "clump" in an array is a series of 2 or more adjacent elements of the same value.
# Return the number of clumps in the given arguments.
#
# problem_14 1, 2, 2, 3, 4, 4, :problem => :count_clumps    # => 2
# problem_14 1, 1, 2, 1, 1,    :problem => :count_clumps    # => 2
# problem_14 1, 1, 1, 1, 1,    :problem => :count_clumps    # => 1
#
#
# PROBLEM: same_ends
# Return true if the group of N numbers at the start and end of the array are the same.
# For example, with [5, 6, 45, 99, 13, 5, 6], the ends are the same for n=0 and n=2, and false for n=1 and n=3.
# You may assume that n is in the range 0..nums.length inclusive.
#
# The first parameter will be n, the rest will be the input to look for ends from
# problem_14 1,   5, 6, 45, 99, 13, 5, 6,  :problem => :same_ends    # => false
# problem_14 2,   5, 6, 45, 99, 13, 5, 6,  :problem => :same_ends    # => true
# problem_14 3,   5, 6, 45, 99, 13, 5, 6,  :problem => :same_ends    # => false
#
def problem_14(*params)
  #*params is where the array comes in,it could contain any number of arguments- as shown with the *
  problem = params.pop[:problem] if params.last.is_a? Hash
  problem ||= :count_clumps

  return count_clumps(*params) if problem == :count_clumps
  return same_ends(*params)    if problem == :same_ends
end

def count_clumps(*numbers)
  clumps      = 0
  previous    = nil
  two_before  = nil

  numbers.each do |number|
    clumps += 1 if (previous == number) && (previous != two_before)
    two_before = previous
    previous   = number
  end
  clumps
end

def same_ends(n, *params)
  params[0, n] == params[-n, n]
end

#My attempt which was incorrect, along with my comments on thought process
# def problem_14(default = Hash.new)
#   clump_hash = default.fetch(:count_clumps)
#   #proble_14(clump_hash = Hash.new)??  #the correct way to add a default hash as a parameter to method?
#   # clump_hash.is_a?(Hash) - won't it always say it's a hash because
#   # clump_hash
#   #how to check if no hash has been provided? I've added it as an optional parameter? pretty sure this is wrong
#   yield
#   count_clumps
# end
# # You have two different problems to solve, you must get which one it is from a hash
# # The default value for the hash should be :count_clumps
# # If no hash is provided, choose count_clumps
#
#
# def count_clumps(*array)
#   counted = clump_hash.each_with_cons.map(2) { |element| element if clump_hash[element].count > 1 }
#   return counted.count
# end
#
# def same_ends
#   true_or_false = clump_hash.each.map { |element| true if clump_hash[element[0]] == clump_hash[element.last]}
#   return true_or_false.flatten
# end
#
# end
