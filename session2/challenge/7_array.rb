# Given a sentence, return an array containing every other word.
# Punctuation is not part of the word unless it is a contraction.
# In order to not have to write an actual language parser, there won't be any punctuation too complex.
# There will be no "'" that is not part of a contraction.
# Assume each of these  charactsrs are not to be considered: ! @ $ # % ^ & * ( ) - = _ + [ ] : ; , . / < > ? \ |
#
# Examples
# alternate_words("Lorem ipsum dolor sit amet.")  # => ["Lorem", "dolor", "amet"]
# alternate_words("Can't we all get along?")      # => ["Can't", "all", "along"]
# alternate_words("Elementary, my dear Watson!")  # => ["Elementary", "dear"]


def alternate_words(str)

  '!@$#%^&*()-=_+[]:;,./<>?\\|'.split(//).each do |char|
    str = str.gsub(char, ' ')
  end

alternate_array = []
  str.split.map.each_slice(2) do |first, second|
    alternate_array << first
  end
  alternate_array
end


# My solution without checking Josh's & adding in the regex iteration:
#
# def alternate_words(str)
#   alternate_array = []
#   str = str.gsub(/[[:punct:]]/, '') #couldn't work out how to keep the ' in the string- the rest of this solution is correct
#   str.split.map.each_slice(2) do |first, second|
#     alternate_array << first
#   end
#   alternate_array
# end
#
# alternate_words("Can't we all get along?")

# Notes on gsub
# str = str.gsub(/[!@$/[%^&*()-=_+[]:;,./<>?\|]/, '')
  # gsub(/[[:punct:]]/, '')
  # /\p{P}(?<!')/
  # str = str.gsub("(?!) [[:punct:]]", "", str)
