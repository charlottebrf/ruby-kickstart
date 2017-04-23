# Write a method, reverse_map, which invokes a block on each of the elements in reverse order,
# and returns an array of their results.
#
# reverse_map(1, 2, 3) { |i| i * 2 }      # => [6, 4, 2]

def reverse_map(*args, &block)
  args.reverse.map(&block)
end

#*args > passing multiple arguments
#&block > passing the block

#This was my original solution that didn't work- misinterpreted question (literally adding in the block)- did realise that might be an issue but needed to check solution.
#getting a wrong number of arguments error here

# def reverse_map(a, b, c)
#   [a, b, c].sort.reverse.map { |i| i * 2 }
# end

#is the error something to do with taking a &block as an argument?
# def reverse_map(&block)
# end
