class ShoppingCart
	attr_reader :cart, :price, :quantity, :subtotal
	def initialize
		@cart = [apple, apple, orange, pear]
	end

	def add_item_to_cart (product, price, quantity)
		@product = product
		@price = price
		@quantity = quantity

		@cart.push({:name => @product, :price => @price, :quantity => @quantity})
	end

	def show
		puts "Cart items: "
		@cart.each do |item|
			puts "You have #{item[:quantity]} #{item[:name]} at $#{item[:price]}"
		end
		test = Apple.new(@cart)
		test.discount_fruit
	end

	def cost
		@subtotal = 0
		@cart.each do |price|
			@subtotal += (price[:price] * price[:quantity])
		end
		puts "Your subtotal is: $#{subtotal}"
	end
end

class Apple < ShoppingCart

	def cost_with_discount
		@discount = 0
		@cart.each do |item|
			if item[:name] == "apples" && item[:quantity].even?
				puts "Discount!"
				@discount == (item[:quantity] * item[:price]) / 2
			end
		end
	end
end

class Orange
	def discount
		
	end

end



# class Orange
# 	def discount_fruit
# 	end
# end

# class Grapes
# 	def discount_fruit
# 	end
# end


cart = ShoppingCart.new

cart.add_item_to_cart("apples", 10, 12)
cart.add_item_to_cart("bananas", 20, 1)
cart.add_item_to_cart("grapes", 15, 4)
cart.add_item_to_cart("oranges", 5, 9)

#apples = Apple.new
#apples.discount_fruit

cart.show
cart.cost







