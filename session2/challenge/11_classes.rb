# Write a program that outputs the lyrics for "Ninety-nine Bottles of Beer on the Wall"
# Your program should print the number of bottles in English, not as a number. For example:
#
# Ninety-nine bottles of beer on the wall,
# Ninety-nine bottles of beer,
# Take one down, pass it around,
# Ninety-eight bottles of beer on the wall.
# ...
# One bottle of beer on the wall,
# One bottle of beer,
# Take one down, pass it around,
# Zero bottles of beer on the wall.
#
# Your program should not use ninety-nine output statements!
# Design your program with a class named BeerSong whose initialize method
# receives a parameter indicating the number of bottles of beer initially on the wall.
# If the parameter is less than zero, set the number of bottles to zero. Similarly,
# if the parameter is greater than 99, set the number of beer bottles to 99
# Then make a public method called print_song that outputs all stanzas from the number of bottles of beer down to zero.
# Add any additional methods you find helpful.

class BeerSong
  attr_accessor :beers

  def initialize(beers)
    beers = 0  if beers < 0
    beers = 99 if beers > 99
    self.beers = beers
  end

  def print_song
    beers.downto 1 do |i|
      print_stanza i
    end
  end

  def print_stanza(n)
    if n.zero?
      String.new
    else
      puts "#{translate n} #{bottle n} of beer on the wall,"        ,
           "#{translate n} #{bottle n} of beer,"                    ,
           "Take one down, pass it around,"                         ,
           "#{translate n - 1} #{bottle n-1} of beer on the wall."
    end
  end

  # returns "bottle" or "bottles"
  def bottle(n)
    if n == 1 then 'bottle' else 'bottles' end
  end

  # translates number to English
  def translate(n)
    if 0 <= n && n <= 19
      %w(zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)[n]
    elsif n % 10 == 0
      %w(zero ten twenty thirty forty fifty sixty seventy eighty ninety)[n/10]
    else
      "#{translate n/10*10}-#{translate n%10}".downcase
    end.capitalize
  end


end


#Nearly there with the class it needed some more time. Plan to return to this next week & give it another shot
#See notes & some commented out attempts below
# class BeerSong
#
#   attr_accessor :bottles
#
#   def initialize(bottles)
#     self.bottles = bottles #do i need the instance variable on this?
#   end
#
#   def print_song
#     bottles = checks_bottles
#     #I am given an integer
#     #I take that number & I interpolate it in the lyric strings
#     #I take the number & -1 from that number
#     #I take this new number & I interpolate it in the lyric strings
#     #I take this new number & I -1 from that number
#     #I continue to do this until I get to 0
#     #Once I've reached 0 I want to print the last stanza of the song & escape the loop
#   end
#
#   def looping_bottles
#     num_bottles = 0
#     while bottles > 0 do
#       num_bottles << bottles - 1
#     end
#     puts num_bottles
#   end
#
#   class BeerSong
#
#   attr_accessor :bottles
#
#   def initialize(bottles)
#     self.@bottles = bottles #do i need the instance variable on this?
#   end
#
#   @bottles.downto (0) do |i|
#     puts i
#   end
#
#   # num_bottles = 0
#   # def looping_bottles
#   #   until @bottles < 0
#
#   #   puts @bottles >> num_bottles
#   #   @bottles-=1
#   # end
#   # num_bottles
#
# end
#
# bottles1 = BeerSong.new(5)
# bottles1.looping_bottles
#
#
# end
#
# def deletes_bottle(bottles )
#   bottles = (bottles - 1)
#   p bottles
# end
# #takes an amount of bottles & deletes 1
#
# def checks_for_zero(bottles)
#   if bottles == o
#     true
#   else
#     false
# end
# #returns true if the bottles == 0 else this is false
#
# def displays_lyrics(bottles, one_less)
#   puts "#{bottles} bottles of beer on the wall,"
#   puts "#{bottles} bottles of beer on the wall,"
#   puts "Take one down, pass it around,"
#   puts "#{one_less} bottles of beer on the wall."
# end
#
# def bottles_str(bottles)
#   words = bottles.to_words
#   words> "ninety nine"
#   #how do you get the
# end
#
# #some kind of a
# ones = %{zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eightneen nineteen}
#
#
#   end
  #
  #
  # def bottle_of_beer (number)
  #  puts "To get the lyrics to 99 bottles on the wall type in an integer between 1-99"
  #   #number = gets.chomp
  #   if (number >= 1 && number <= 99)
  #     new_number = number.to_i - 1
  #    puts number.to_s + " bottles of beer on the wall, " + number.to_s + " bottles of beer"
  #    puts "Take one down and pass it around, " + new_number.to_s + " bottles of beer on the wall."
  #   else
  #     puts "I'm sorry you can only have a number between 1-99 :-/"
  #  end


#This private part needed to be set in the initialise
# private
#
# #is this the correct approach? think about how .self will be used throughout this class
# #as in my constructor I set this to .self & have an attr_accessor I think I can call instance variable without @
#   def checks_bottles
#     if bottles < 0
#       bottles = 0
#     elsif
#       bottles > 99
#       bottles = 99
#     else
#       bottles
#     end
#     # If the parameter is less than zero, set the number of bottles to zero. Similarly,
#     # if the parameter is greater than 99, set the number of beer bottles to 99
#   end
#
# end
