# This challenge is based off of problem 1
# modify it such that it also accepts in the hash, a color (whose values are red("#FF0000"), green("#00FF00"), and blue(#0000FF) )
# if the color is set, then it should show up in the style
# It should also not be necessary to pass in the hash, if you don't want to specify options
#
#
# EXAMPLE:
#
# html = HTMLTag.new 'p', 'Hello World', :multiline => false, :color => :red
# html.to_s     # => <p style="color:#FF0000">Hello World</p>
#
# sports = [
#   HTMLTag.new('li', 'baseball', :multiline => false, :color => :red,   :font => :serif) ,
#   HTMLTag.new('li', 'soccer',   :multiline => false, :color => :green, :font => :sans_serif) ,
#   HTMLTag.new('li', 'football', :multiline => false, :color => :blue,  :font => :monospace) ,
# ]
#
# ordered_list = HTMLTag.new 'ol' , sports.join , :multiline => true
#
# puts ordered_list  # => (as output)
#                      <ol >
#                      <li style='color:#FF0000;font-family:"Times New Roman", "Georgia"'>baseball</li>
#                      <li style='color:#00FF00;font-family:"Arial", "Verdana"'>soccer</li>
#                      <li style='color:#0000FF;font-family:"Courier New", "Lucida Console"'>football</li>
#                      </ol>



class HTMLTag
  FONTS = {
    :serif      => '"Times New Roman", "Georgia"',
    :sans_serif => '"Arial", "Verdana"',
    :monospace  => '"Courier New", "Lucida Console"' ,
  }

  COLORS = {
    :red   => '#FF0000',
    :green => '#00FF00',
    :blue  => '#0000FF',
  }

  attr_accessor :name, :innerHTML, :font, :color, :multiline

  # options: :multiline should be true or false
  def initialize(name, innerHTML, options=Hash.new)
    @name, @innerHTML = name, innerHTML
    self.font      = FONTS[options[:font]]
    self.color     = COLORS[options[:color]]
    self.multiline = options.fetch :multiline, false
  end

  def style
    return nil unless font || color
    to_return = "style='"
    to_return << "font-family:#{font};" if font
    to_return << "color:#{color};"      if color
    to_return << "'"
    to_return
  end

  def to_s
    line_end = ""
    line_end = "\n" if multiline # remember, if options[:multiline] doesn't exist, it will return nil, and nil is false
    "<#{name} #{style}>#{line_end}"   \
      "#{innerHTML.chomp}#{line_end}" \
    "</#{name}>\n"
  end
end

# This was my original incorrect solution. Again I keep not getting .self in classes
# Also inserting the Hash as an optional argument & then including the font & colors as options
#along with their symbols
#stle I got that it needed to be or but didn't properly carry out the login in the return strings
#same goes for to_s method- covering all of the eventualities
#Need to improve looking at the instance variable examples & truly understanding how that would translate to a class that needs to be amended


# class HTMLTag
#
#   # modify it such that it also accepts in the hash, a color (whose values are red("#FF0000"), green("#00FF00"), and blue(#0000FF) )
#   FONTS = {
#     :serif      => '"Times New Roman", "Georgia"',
#     :sans_serif => '"Arial", "Verdana"',
#     :monospace  => '"Courier New", "Lucida Console"'
#   }
#
# #why is FONTS in a capital?
# #difference between storing hashes in a symbol- check if this needs to be as it appears above?
#   COLORS = {
#     :red     => "#FF0000",
#     :green   => "#00FF00",
#     :blue    => "#0000FF"
#   }
#
#   # if the color is set, then it should show up in the style
#   # It should also not be necessary to pass in the hash, if you don't want to specify options
#   #
#
#
#   attr_accessor :name, :innerHTML, :options
#
#   # options: :multiline should be true or false
#   def initialize(name, innerHTML, options)
#     @name, @innerHTML, @options = name, innerHTML, options
#   end
#
#   def font
#     font = options[:font]  #  one of :serif, :sans_serif, or :monospace
#     FONTS[font]
#   end
#
#   def color
#     color = options[:color] #one of :red, :green, or :blue
#     COLORS[color]
#   end
#
#   def style
#     return nil unless options[:font] || options[:color]
#     "style='font-family:#{font}'"
#     "style='color:#{color}'"
#   end
#
#   def to_s
#     line_end = if options[:multiline] then "\n" else "" end
#     "<#{name} #{style}>#{line_end}"  \
#     "#{innerHTML.chomp}#{line_end}"  \
#     "</#{name}>\n"
#   end
#
# end
