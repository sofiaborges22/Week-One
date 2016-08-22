class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end

homes = [
  Home.new("Nizar's place", "San Juan", 2, 42),
  Home.new("Fernando's place", "Seville", 5, 47),
  Home.new("Josh's place", "Pittsburgh", 3, 41),
  Home.new("Gonzalo's place", "Málaga", 2, 45),
  Home.new("Ariel's place", "San Juan", 4, 49)
]
homes.each do |hm|
  puts "#{hm.name} in #{hm.city} \n Price: $#{hm.price} a night"
end

x = 0 
homes.each do |hm|
	x = x + hm.price
end

puts "The average price is:"
puts x / homes.length

total_capacities = homes.reduce(0.0) do |sum, hm|
  sum + hm.capacity
end

puts "The average capacity is:"
puts total_capacities / homes.length

total_prices = homes.reduce(0.0) do |sum, hm|
	sum + hm.price
end

puts "The average price is:"
puts total_prices / homes.length

puts ""
puts ""

homes.each_with_index do |hm, index|
  puts "Home Number #{index + 1}: #{hm.name}"
end

puts ""
puts ""

home_41_dollars = homes.find do |hm|
  # Is hm's price $41?
  hm.price == 41
end


puts "The first home that costs $41 is:"
puts home_41_dollars.name

homes.each_with_index do |hm, index|
  puts "Home Number #{index + 1}: #{hm.name}"
end
