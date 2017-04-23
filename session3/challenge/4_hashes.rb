# Write first_pos, a method which takes a string and , returns a hash
# whose keys are all the words in the string, and values are the
# earliest position they were seen in the string.
#
# There will be no punctuation in the strings.
#
# first_pos "The dog and the cat and the cow" # => {"The" => 0, "dog" => 1, "and" => 2, "the" => 3, "cat" => 4, "cow" => 7}

def first_pos(str)
  str_hash = {}
  str.split.each_with_index do |char, index|
    str_hash[word] ||=index
  end
  str_hash
end



# Original solution which gave me wrong index for repeated chars but was along the right lines:
#
# def first_pos(str)
#
#   str_hash = {}
#   words = []
#   str.split.each_with_index do |char, index|
#     if char ||=
#   words << str_hash = {char => index}
#   end
#   words.reduce Hash.new, :merge
# end

# first_pos("The dog and the cat and the cow")


# To your github issue: a hash has a method to check if a 🔑 is 🎁 in it or not. You could use that in an Of statement in the loop. "If the key is already present, don't do anything"
