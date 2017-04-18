# Given a string, replace every instance of sad to happy
#
# add_more_ruby("The clowns were sad.")         # => "The clowns were happy."
# add_more_ruby("The sad dad said sad stuff.")  # => "The happy dad said happy stuff."
# add_more_ruby("Sad times are ahead!")         # => "Happy times are ahead!"

def add_more_ruby(string)
  match = "sad"
  while(string.include?(match))
    string.sub!(match, "happy")
  end
  string

  match = "Sad"
  while(string.include?(match))
    string.sub!(match, "Happy")
  end
  string
end
