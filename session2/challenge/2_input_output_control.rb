# Prompt the user for a number, then read it in and print out "hi" that many times
#
# Repeat this process until the user submits "bye", then say "goodbye" and end the program
# HINT: Check out example 2 if you get stuck

# example:
# PROGRAM: Enter a number
# USER:    4
# PROGRAM: hi hi hi hi
# PROGRAM: Enter a number
# USER:    2
# PROGRAM: hi hi
# PROGRAM: Enter a number
# USER:    bye
# PROGRAM: goodbye


# remember you can try your program out with              $ ruby 2_input_output_control.rb
# and when you think it is correct, you can test it with  $ rake 2:2



def hi_hi_goodbye

  puts "Enter a number"

  while number = gets
      puts "hi " * number.to_i
      break if number.chomp == "bye"
    end
    puts "goodbye"
end

#
#A long winded attempt at a solution that I wish I hadn't spent so much time on :-/
#   def hi_hi_goodbye
#number = prompts_number()
#   if checks_valid(number) == true
#     display_string(number)
#     number = prompts_number()
#   #   while checks_valid(number) == true
#   #     prompts_number()
#   #     display_string(number)
#   #     unless "bye"
#   #     display_goodbye()
#   #   end
#   # end
#   else
#     display_goodbye()
#   end
#
# end
#
# def keeps_asking(number)
#   while number  =~ /^\d+$/
#     number
#   end
# end
#
# def prompts_number
#   puts "Enter a number"
#   gets.chomp
# end
#
# def checks_valid(number)
#   if number =~ /^\d+$/
#     true
#   elsif number == "bye" #find regex expression for bye ( \w+ ) ??
#     false
#   end
# end
#
# def display_string(number)
#   puts "hi" * number.to_i
# end
#
# def display_goodbye
#   puts "goodbye"
# end
#
#
# # elsif number =~ \w+
# #   puts "goodbye"
# # end
#

# This will just invoke the method if you run this program directly
# This way you can try it out by running "$ ruby 2_input_output_control.rb"
# but it will still work for our tests
hi_hi_goodbye if $0 == __FILE__
