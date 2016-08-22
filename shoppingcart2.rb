require 'pry'
class ShoppingCart
	attr_accessor :cart
	def initialize
		@cart = []
	end

	def add_item_to_cart(fruits)
		@cart.push(fruits)
	end

	def show
		puts "Your Cart items are: "
		@cart.each do |item|
			puts "You have #{item.quantity} #{item.product} at $#{item.price}"
		end
	end
	def subtotal
		@subtotal = 0
		@cart.each do |price|
			@subtotal += (price.price * price.quantity)
		end
		puts "Your subtotal is: $#{@subtotal}"
	end
	# def total
	# 	puts discount_of_apple.discount
	# 	puts "Your grand total is: $#{total}"
	# end

end

class Fruits
	attr_reader :product, :price, :quantity
	def initialize(product, price, quantity)
		@product = product
		@price = price
		@quantity = quantity
	end
end

class Apples < Fruits
	def discount
		(@price * @quantity) - (@price * (@quantity /2))
	end
end

class Oranges < Fruits
	def discount
	if @quantity != 1
		(@price * @quantity) - (@price * (@quantity * 0.333)).round
	end
	end
end

class Grapes < Fruits
	def discount (selected_produce)
		free_banana = @quantity / 4
		free_banana.times do |add|
			ShoppingCart.new.add_item_to_cart(Fruits.new("bananas", 0, 1))
		end	
	end
end

#Fruit objects:
apples = Fruits.new("apples", 10, 12)
bananas = Fruits.new("bananas", 20, 1)
grapes = Fruits.new("grapes", 15, 4)
oranges = Fruits.new("oranges", 5, 9)
free_banana = Fruits.new("bananas", 0, 1)

#Calling the class ShoppingCart
selected_produce = ShoppingCart.new
#Adding them to the cart
selected_produce.add_item_to_cart(apples)
selected_produce.add_item_to_cart(bananas)
selected_produce.add_item_to_cart(grapes)
selected_produce.add_item_to_cart(oranges)
#Calling the show method
selected_produce.show
#Calling the subtotal method
selected_produce.subtotal
#Calling the total method
# puts selected_produce.total

discount_of_apple = Apples.new("apples", 10, 12)
discount_of_orange = Oranges.new("oranges", 5, 9)
discount_of_grapes = Grapes.new("grapes", 15, 8)





