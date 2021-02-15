# Complete this class so that the test cases shown below work as intended. You are free to add any methods or instance variables you need. However, do not make the implementation details public.

# You may assume that the input will always fit in your terminal window.

class Banner
  attr_reader :message

  def initialize(message, banner_width = message.size)
    @message = message
  end

  def to_s
    [horizontal_rule, empty_line, message_line, empty_line, horizontal_rule].join("\n") # puts will call to_s to each element of the array individually and will print it out as it is called on a new line
  end

  private

  def horizontal_rule  
    "+-" + ("-" * (@message.size)) + "-+"
  end

  def empty_line
    "| " + (" " * (@message.size)) + " |"
  end

  def message_line
    "| #{@message} |"
  end
end

banner = Banner.new('To boldly go where no one has gone before.')
puts banner

banner = Banner.new("Yo mama!")
puts banner
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+

banner = Banner.new('')
puts banner
# +--+
# |  |
# |  |
# |  |
# +--+