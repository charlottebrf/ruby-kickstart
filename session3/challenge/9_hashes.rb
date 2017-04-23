# Write a function which takes two arrays, a, and b
# it should then find the elements that are in both (union)
#
# This is the same as [1,2,3] & [1,2,4]
# but we don't want to use the builtin method
# instead, implement your own by creating a hash table of elements from the first set
# and checking it against the elements from the second set
#
# the keys will be the elements in the arrays
# each value will be a two element array, where the first index is true if the
# key is in a, and the second is true if the key is in b
# if an index is not true, it should be nil
#
# return the hash, and the array of elements in both sets (it should be sorted)
# (do not worry about the order of the hash, remember, on 1.8, hashes have no ordering)
#
# hints:
#   you can set up default behaviour for a hash by passing a block, see cheatsheet (essentially a lazy initialization)
#   you can get an array of keys from a hash with the keys method
#
# examples:
#
# shared [1,2,3], [1,2,4]            # => [{1=>[true, true], 2=>[true, true], 3=>[true, nil], 4=>[nil, true]}, [1, 2]]
# shared %w(a b c d), %w(aa b cc d)  # => [{"a"=>[true, nil], "b"=>[true, true], "c"=>[true, nil], "d"=>[true, true], "aa"=>[nil, true], "cc"=>[nil, true]}, ["b", "d"]]
# shared [], [1,2]                   # => [{1=>[nil, true], 2=>[nil, true]}, []]
# shared [1,2], []                   # => [{1=>[true, nil], 2=>[true, nil]}, []]
# shared [], []                      # => [{}, []]
# shared [1,2,:c], ['a','b',:c]      # => [{1=>[true, nil], 2=>[true, nil], :c=>[true, true], "a"=>[nil, true], "b"=>[nil, true]}, [:c]]
# shared [1,2,3], [3,2,1]            # => [{1=>[true, true], 2=>[true, true], 3=>[true, true]}, [1, 2, 3]]

def shared(a, b)

  same = {}
  a.each do |element|
    same[element] ||= [nil, nil]
    same[element] [0] = true
  end

  b.each do |element|
    same[element] ||= [nil, nil]
    same[element] [1] = true
  end

  final_result = same.select  { |key, value| value == [true, true] }.map { |key, value| key }

  return same, final_result.sort
end


  # Some pseudocode below. Problem is I'm still thinking in arrays not hashes & how to access them.
  #Return to this to try again as feel I shoyld have been able to get this
  
  # # first_hash = Hash.new [a]
  # # p first_hash
  # #struggled turning a into a hash
  # hash1 = {"first" => 1, "second" => 2, "third" => 3}
  # hash2 = {"first" => 1, "second" => 2, "third" => 4 }
  #
  #
  #
  # a.each { first_hash = |e| Hash[e] }
  # p first_hash

#   odds_key.each { |e| Hash[e] = (1..e).to_a.select{ |num| num.even? } }

# p first_hash
  # p first_hash
  # p first_hash = {a}
#given two arrays
# This is the same as [1,2,3] & [1,2,4]
#i need to create a new hash table from the first set
#then check this against the elements from the second set
#keys - elements in the arrays
#value - two elements in array (booleans):
#the  first index is true if the key is in a
#the second is true if the key is in b
# if an index is not true, it should be
# return the hash, and the array of elements in both sets (it should be sorted)
#   you can set up default behaviour for a hash by passing a block, see cheatsheet (essentially a lazy initialization)
#   you can get an array of keys from a hash with the keys method
