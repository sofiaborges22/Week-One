=begin 
class Car               #Create a class for car
	def noise           #with a method to make noise
		print "Broom"   #that prints "Broom"
	end
end

car1 = Car.new			#Then, create one car
puts car1.noise         #Call that method
=end


#Create two different sounds for the car
class Car
	def initialize(sound, make)    					#Initialize method
		@sound = sound              				#Instance variables
		@make = make
		@cities = []								#Array with open brackets
	end

	def noise
		print @sound
	end

	def make
		print @make
	end

	def self.speed_control							#Class method needs a self.	
		puts "What is your current speed?"
		user_speed = gets.chomp.to_i				#.to_i converts a string to integer
			if user_speed > 100
				puts "Slow down!"
			else
				puts "Enjoy your ride"
			end
	end

	def visits(city)								#Method used to collect the list of cities
		@cities.push(city)							#Push allows you to collect the cities when calling the method
	end												# << is the same as push

	#If you want to put a file rather than an array, use:

	#cities = IO.readlines("test.txt").map {|line| line.chomp} 
	#cities << city
	#IO.write("cities.txt", cities.join("/n"))

	#Also, remove the array from the initialize method

	def cities										#Method used to show the list
		puts @cities
	end
end

class RacingCar < Car 								#Extend class Car with a racing class
	def initialize
		@noise = "BROOOOOM"
	end
end

#If you want to do this class with a super:
	#class RacingCar < Car
		#def initialize
			#super('BROOOM')
		#end
	#end

class Person										#Creating a new class for person
	attr_reader(:name)
	attr_accessor(:age)								#Read only attribute because there is no name method for Person
	def initialize (name, age)						#Two attributes: name and age
		@name = name
		@age = age
	end
end

car1 = Car.new("Broom", "BMW")
car2 = Car.new("BROOOM", "Porsche")
car3 = Car.new("Broooom", "Ford")

puts car1.noise
puts car1.make
puts car2.noise
puts car2.make


car1.visits("Malaga")								#Calling method visits to add cities visited
car1.visits("Sevilla")
car1.visits("Granada")
car2.visits("Salamanca")
car2.visits("Valencia")

car1.cities											#Showing list of cities for car1
car2.cities											#Showing list of cities for car2

Car.speed_control									#Do not need self. when calling a class method

car4 = RacingCar.new()								#Creating a new car for the racing car class
car4.noise											#Calling the method

sofia = Person.new("Sofia", 22)						#Creating a new person for the person class
puts sofia.name 									#Calling the method name