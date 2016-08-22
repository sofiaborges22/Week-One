=begin
# Sharing Behavior
# Classes should be decoupled but cohesive
# Types of relationships 
	- Inheritance
		: when two classes share a method, create a new class of that method
		: inherit the new class to those two classes
		: no multiple inheritance in ruby
	- Mixins
		: mixing methods in classes
		: create a module for the other shared method
		: under the class line, put "include Method"
		: you can include many modules
			: no instances in a module
		: leave it out of the classes that don't need it
	- Compositions / collaboration
		: when an object achieves its behavior by containing another object
		: dependency injection
		: **prefer composition over inheritance
	- Duck types
When to use which relationship:
	- use inheritance for is-a relationship
	- use mixins for is-able-to relationship
	- use duck types for behave-like-a-duck
	- use composition for has-a relationship
=end

#Exercise 1 = employee_with_modules.rb

=begin----------------------------------------------------
#Exercise with composition / collaboration

class Car
	def initialize(engine)
		@engine = engine
	end

	def start
		puts "BROOOM"
		@engine.noise
	end
end

class Engine
	def noise
		"VROOM"
	end
end

ferrari = Car.new(Engine.new)
puts ferrari.start
=end-----------------------------------------------------
