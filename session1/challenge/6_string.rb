# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#
# odds_and_evens("abcdefg",true)    # => "bdf"
# odds_and_evens("abcdefg",false)   # => "aceg"

def odds_and_evens(string, return_odds)
  string = string.split("")
  empty_array = []
  string.each_with_index do |character,index|
    if return_odds && index.odd?
       empty_array << character #empty_array.push(char)
     elsif !return_odds && index.even?
       empty_array << character #empty_array.push(char)
     end
   end
   empty_array.join
end

# A more long winded solution:
# def odds_and_evens(string, return_odds)
#   string = string.split("")
#   empty_array = []
#   string.each_with_index do |character,index|
#     if return_odds == true && index.odd?
#        empty_array << character #empty_array.push(char)
#      elsif return_odds == false && index.even?
#        empty_array << character
#      end
#    end
#    empty_array.join
# end

#A more elegant solution:
# def odds_and_evens(string, return_odds)
#   string = string.split("")
#   empty_array = []
#   string.each_with_index do |character,index|
#     if return_odds == index.odd? # duplicating boolean: returns_odds == true
#        empty_array << character #empty_array.push(char)
#    end
#    empty_array.join
# end

#Pseudocode
# if return_odds == true
#step 1: get the length of the string
#step 2: turn string into an array of individual characters [a,b,c,d,e,f,g]
#step 3: know the index number of each character (each with index)
#step 4: check whether the index number is odd or even
#step 5: if return_odds == true => then return a new array of all the odd indexes
#step 6: or if returns_even == false => then return a new array of all the even indexes
#step 7: turn that array back into a string & join the characters together into a single string

#each with index ennumerator
#add to an array or assign to an array
# string_length string.s_length
# # string = string.split("")
# string = "abcdefg"
# string.values_at(* string.each_index.select {|i| i.even?})
