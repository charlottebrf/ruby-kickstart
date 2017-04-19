# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)

  string = string.split("")
  empty_array = []

  string.each_with_index do |letter, index|
    if letter == "r" || letter == "R"
      empty_array << string[index + 1]
    end
  end
  empty_array.join
end


#Pseudocode:
#split the string into an array of its letters (rather than words)
#each index enumerator - enumerate each letter to identify the 'r'
#once r is identified take the index next to the character 'r'
#shovel these characters into a new array
#join this new array to become a string
