# Print to stdout, each element in a hash based linked list, in reverse.
# If you don't know what that is, go check out the previous problem.
#
# EXAMPLES:
# head = {:data => 1, :next => nil}
# head = {:data => 2, :next => head}
#
# print_list_in_reverse head   # >> "1\n2\n"

def print_list_in_reverse(list)
  return unless list
  print_list_in_reverse list[:next]
  puts list[:data]
end

#unless there is a list then return
#different to the previous one- take the next linked list of the list
#assign this to the variable print_list_in_reverse
#output the list[:data] - the data from the list which gets printed to the screen
