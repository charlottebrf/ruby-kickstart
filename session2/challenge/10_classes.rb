# Make a person class that has a name, age, and birthday
#
# josh = Person.new 'Josh', 28
#
# josh.name     # => "Josh"
# josh.age      # => 28
#
# josh.name = 'Joshua'
# josh.name     # => "Joshua"
#
# josh.birthday # => 29
# josh.age      # => 29
#
# josh.birthday # => 30
# josh.age      # => 30
#



class Person
  attr_accessor 'name', 'age'

  def initialize(name, age)
    @name = name
    @age = age
  end

  def birthday
    @age += 1
  end

end


# class Person
#   attr_accessor 'name', 'age', 'birthday'
#
#   def initialize(name, age, birthday)
#     name = @name
#     age = @age
#     birthday = @birthday
#   end
#
# end


# Person.new.name.age.birthday

# # new_person = Person.new("charlotte", 31, 16)
# new_person.name
# new_person.age
# new_person.birthday

#
# def name=(name)
#   @name = name
# end
#
# def age=(age)
#   @age = age
# end
#
# def birthday=(birthday)
#   @birthday = birthday
# end
