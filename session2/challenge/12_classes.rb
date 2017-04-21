# Define a class called Fraction
# This class is used to represent a ratio of two integers
# Include setter methods called numerator and denominator that allow the user to change these values
# Also include a method called to_f that returns the ratio as a float (a number with a decimal point, such as 10.3)
# Also include a method called lowest, which returns a new Fraction, where the numerator and denominator
# are reduced to lowest terms (ie 20/60 becomes 1/3)
# This will require finding the greatest common divisor for the numerator and denominator
# then dividing both by that number.
# I have included a greatest common divisor method for you
# You should also define a method, to_s, that will represent the Fraction as a String
#
# EXAMPLE:
# f = Fraction.new 20, 60
# f.numerator          # => 20
# f.denominator        # => 60
# f.to_s               # => "20/60"
# f.lowest.to_s        # => "1/3"
# f.numerator = 50
# f.denominator = 100
# f.to_s               # => "50/100"
# f.to_f               # => 0.5
class Fraction

  attr_accessor 'numerator', 'denominator'

  def initialize(numerator, denominator)
    @numerator = numerator
    @denominator = denominator
  end


  def to_f
    (@numerator.to_f/ @denominator.to_f).round(1)
  end

  def lowest
    divisor= gcd(@numerator, @denominator)
    lowest_numerator = @numerator / divisor
    lowest_denominator = @denominator / divisor
    lowest_fraction = Rational(lowest_numerator, lowest_denominator)
    lowest_fraction
  end

  def gcd(a,b)
    return a if b == 0
    gcd(b, a%b)
  end

  def to_s
    @numerator.to_s + "/" + @denominator.to_s
  end

end

#My solution with notes:
# class Fraction
#
#   attr_accessor 'numerator', 'denominator'
#
#   def initialize(numerator, denominator)
#     @numerator = numerator
#     @denominator = denominator
#   end
#
#
#   def to_f
#     (@numerator.to_f/ @denominator.to_f).round(1)
#       # Also include a method called to_f that returns the ratio as a float (a number with a decimal point, such as 10.3)
#       #double check that the round isn't rounding it up/ down in a way that tests don't pass
#   end
#
#   def lowest
#     divisor= gcd(@numerator, @denominator)
#     lowest_numerator = @numerator / divisor
#     lowest_denominator = @denominator / divisor
#     lowest_fraction = Rational(lowest_numerator, lowest_denominator)
#     lowest_fraction
#
#       #Part 3:
#   # Also include a method called lowest, which returns a new Fraction, where the numerator and denominator
#   # are reduced to lowest terms (ie 20/60 becomes 1/3)
#   # This will require finding the greatest common divisor for the numerator and denominator
#   # then dividing both by that number.
#   # I have included a greatest common divisor method for you
#   end
#
#   def gcd(a,b)
#     return a if b == 0
#     gcd(b, a%b)
#   end
#
#   def to_s
#     @numerator.to_s + "/" + @denominator.to_s
#   end
#   # fraction = Rational(@numerator, @denominator)
#   # fraction.to_s
#    #Part 4:
#   # You should also define a method, to_s, that will represent the Fraction as a String
#
#
# end
