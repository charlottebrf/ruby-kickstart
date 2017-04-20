# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String

  self

  def every_other_char
    string = self.split("")
    evens = []
    string.each_with_index do |character,index|
      if index.even?
        evens.push(character)
      end
    end
    evens.join
  end

end

String.new.every_other_char



#pseudocode:
# split the char into an array
#enumerate over the index of each char
#append the even chars into a new array
#join this array together to become a new string
#evens = numbers.select { |number| number.even? }
#
# evens = string.select { |index| index.even?}
# evens
