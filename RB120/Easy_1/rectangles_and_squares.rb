# Write a class called Square that inherits from Rectangle, and is used like this:

class Rectangle
  def initialize(height, width)
    @height = height
    @width = width
  end

  def area
    @height * @width
  end
end

class Square < Rectangle
	# def initialize(total)             # my alternate solution 
 #    @height, @width = total, total
	# end

	def initialize(total)  # LS solution
    super(total, total)
	end
end

square = Square.new(5)
puts "area of square = #{square.area}"