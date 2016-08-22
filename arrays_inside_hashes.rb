=begin
# DATA STRUCTURES #

#Hash example: 

hash = {
:wat => ["hello", "hi", { :wut => [0, [[0,1,2,3,4,5,6,7,8,{:bbq=>"barbacoa"}]]]}]
}

p hash[:wat][2][:wut][1][0][9][:bbq]


#Array example:

arr = [
	[0, 1, 2, 3, 4, {:secret => {:unlock => [0, "pepe"]}}]
]

p arr[0][5][:secret][:unlock][1]

=end

=begin
#My attempt

class CarDealer
	def initialize(inventory)
		@inventory = inventory
	end

	def car_dealer(marca)
		puts "#{marca}: #{@inventory[marca]}"
	end
end

cars = { 
	"Ford" => ["Fiesta", "Mustang"],
	"Honda" => ["Civic", "CR-V"]
	}

car_types = CarDealer.new(cars)
car_types.car_dealer("Ford")
=end

=begin 
#Instructor's example: 

class CarDealer
	attr_reader :inventory

	def initialize(inventory)
		@inventory = inventory
	end

	def cars(brand)
		inventory[brand]
	end

	def print
		inventory.each do |brand, cars|
			puts "#{brand}: #{cars.join(', ')}"
		end
	end
end

dealer = CarDealer.new({"Ford" => ["Fiesta, "Mustang"]
						"Peugot" => ["306", "308"]})

puts dealer.cars("Ford")
dealer.print
=end




