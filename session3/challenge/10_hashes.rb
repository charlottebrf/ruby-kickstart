# Lets represent a file system with hashes
# You will be passed a hash table, whose keys represent folders.
# Their values will either be arrays of filenames in that directory
# or they will be hashes with the same rules (a treelike structure)
#
# Your job is to take the hashes, and return an array containing
# all of the complete file paths where each directory is separated by a '/'
#
# HINT:
#   [1,2,3].is_a? Array # => true
#   [1,2,3].is_a? Hash  # => false
#   {1=>1}.is_a?  Array # => false
#   {1=>1}.is_a?  Hash  # => true
#
# HINT2:
#   Don't feel constrained, you may create any methods, classes, etc, that
#   you need to you may address the problem in any way you need to (I
#   haven't tried it yet, but will probably use a recursive approach)
#
# EXAMPLES:
#
# pathify 'usr' => {'bin' => ['ruby'] }                                                        # => ['/usr/bin/ruby']
# pathify 'usr' => {'bin' => ['ruby', 'perl'] }                                                # => ['/usr/bin/ruby', '/usr/bin/perl']
# pathify 'usr' => {'bin' => ['ruby'], 'include' => ['zlib.h'] }                               # => ['/usr/bin/ruby', '/usr/include/zlib.h']
# pathify 'usr' => {'bin' => ['ruby']}, 'opt' => {'local' => {'bin' => ['sqlite3', 'rsync']} } # => ['/usr/bin/ruby', 'opt/local/bin/sqlite3', 'opt/local/bin/rsync']
# pathify                                                                                      # => []

#
# create it from scratch :)


def pathify(paths=Hash.new)

  #base step
  return paths.map { |path| '/' + path } if paths.is_a? Array
  #return the new array of the hash table- for each path add before it a '/' (this is a block)
  #having crreated that then check if the path is an array
  #if the path is an array then return as an array

  #recursive step

  #now that the base step of creating the array has been done- then carry out this recursive step
  #for each of the paths keys- which is now an array due to the base step
  #iterate over each of the parent_path & child_dirs
  #these have been specified inside the loop- below .each
  to_return = []
  paths.each do |parent_path, child_dirs|
    parent_path = '/' + parent_path
    child_paths = pathify child_dirs
    #is this invoking the method on child_dirs?
    child_paths.each do |child_paths|
      to_return << (parent_path + child_path)
      #then for each of the child_paths - add the parent_path to the child_path & shovel this into a new array to_return
    end
  end
  to_return
  #return this final concatanated array containing both parent & child directories
end
