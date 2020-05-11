class BookInStock

	attr_reader   :isbn 
	attr_accessor :price

	def initialize(isbn, price)
		@isbn  = isbn
		@price = Float(price)
	end

	def price_in_cents
		Integer(price*100 + 0.5)
	end

	def price_in_cents=(cents)
		@price = cents / 100.0
	end

	# def price=(new_price)
	# 	@price = new_price
	# end

	# def isbn
	# 	@isbn
	# end
 #  def price
 #  	@price
 #  end
	def to_s
	"ISBN: #{@isbn}, price: #{@price}"
  end
end

book = BookInStock.new("isbn1", 33.80)
# puts "ISBN  = #{book.isbn}"
puts "Price          = #{book.price}"
puts "Price in cents = #{book.price_in_cents}"
book.price_in_cents = 1234
puts "Price          = #{book.price}"
puts "Price in cents = #{book.price_in_cents}"
# book.price = book.price * 0.75
# puts "New price = #{book.price}"


# puts BookInStock

# b1 = BookInStock.new("isbn1", 3)
# puts b1

# b2 = BookInStock.new("isbn2", 3.14)
# puts b2

# b3 = BookInStock.new("isbn3", 5.67)
# puts b3