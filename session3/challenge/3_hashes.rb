# Write a method that takes a string and returns an array
# whose keys are all the downcased words in the string,
# and values are the number of times these words were seen.
#
# No punctuation will appear in the strings.
#
# Example:
# word_count "The dog and the cat" # => {"the" => 2, "dog" => 1, "and" => 1, "cat" => 1}

def word_count(str)
  words = Hash.new { 0 }
  str.split.each { |word| words[word.downcase] += 1 }
  words
end

#My original solution below whose counter didn't work properly with the count- alongside some commented out experiments
# def word_count(str)
#   key_str = str.downcase.split
#   p key_str
#
#   values_num = []
#   key_str.each do |elem|
#     key_str[elem].count.to_i  >> values_num
#   end
#
#   p values_num
#
#     words_nums_hash = {key_str => values_num}
#   # counter = []
#   # str.split.each do |char|
#   #   counter << str.count(char)
#   #   # counter << str[char].count.to_i
#   # end
#
#   # values_num = []
#   # key_str.count { |e| e >> values_num }
#   # p values_num
#
#
#
#
#
#
#   # duplicates << str.select { |char| str.count(char) > 1 }
#   # p duplicates
# end
# word_count("The dog and the cat")






  # counter = []
  # str.split.each do |char|
  #   counter << str.count(char)
  #   # counter << str[char].count.to_i
  # end

  # values_num = []
  # key_str.count { |e| e >> values_num }
  # p values_num



# returns an array
# whose keys are all the downcased words in the string,
# and values are the number of times these words were seen.
# #
# {key => value} # => {:one=>"two"}
# {0 => 'first', 1 => 'second'}

#pseudocode:
#take the string
#downcase all of the words of the string
#remove all punctuation from the string
#split the string >> an array
#iterate over each element of the array to count how many times that element appears in the split string array
#take this number & then asign that value to the element as a hash key
#push this result into a new array
#return all of the hash keys of the string


# def downcased(&block)
#   block.call.upcase
# end
#
# downcased { "The dog and the cat" }
