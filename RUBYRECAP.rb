# RUBY REC

# class Car
# 	attr_reader :color #creates a method you don't see, in this case, the method of color
# 	def print_color (color)
# 		@color = color
# 	end
# end

# car1= Car.new
# car1.print_color('red')
# puts car1.color
# => red

#Class Variable example

# class Car
# 	@@counter = 0
# 	def initialize
# 		@@counter += 1
# 		@id = @@counter
# 	end

# 	def self.counter #This method allows you to return the value
# 		@@counter
# 	end
# end

# car1 = Car.new
# car2 = Car.new
# puts Car.counter # => 2

# Inheritance
# copying code of parent class into the child class
# overwriting the child class with the parent class methods

# Attributes 
# preferred to use attr_reader -- for safety
# generate methods to get and set values in the instance variables
# color instance variable for a car, attr_reader is just making a method called color that returns the color

# Array is just index order elements in a list
# Hash is a list of elements ordered by keys; more organized
# Array is when it does not matter the order or the organization
# Matrix -- use arrays


















