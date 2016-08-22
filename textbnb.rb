# Textbnb

class Textbnb
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end

def array_printer(array)
  array.each do | hm |
    puts "#{hm.name} in #{hm.city} \n Price: $#{hm.price} a night"
  end
end


homes = [
  Textbnb.new("Isabella's place", "Miami", 5, 50),
  Textbnb.new("Sofia's place", "Barcelona", 2, 30),
  Textbnb.new("Guillermo's place", "Bahamas", 3, 40),
  Textbnb.new("Carolina's place", "Miami", 15, 105),
  Textbnb.new("Camilas place", "New York", 4, 45),
  Textbnb.new("Paula's place", "San Juan", 8, 90),
  Textbnb.new("Gian Carlos' place", "San Juan", 5, 40),
  Textbnb.new("Roberto's place", "Menorca", 3, 40),
  Textbnb.new("Alice's place", "Barcelona", 6, 89),
  Textbnb.new("Reinaldo's place", "Austin", 2, 20)
]

# Iteration 1

homes.each do |hm|
    puts "#{hm.name} in #{hm.city} \n Price: $#{hm.price} a night"
  end


# Iteration 2: Sorting

puts "Sorted by price"

sorted_by_price = homes.sort_by {|i| i.price}
array_printer(sorted_by_price)

puts "Do you want to sort by price or capacity?"
user_input = gets.chomp

if user_input == "price"

  sorted_by_price_reverse = homes.sort_by {|i| i.price}.reverse!
  array_printer(sorted_by_price_reverse)

elsif user_input == "capacity"
  sorted_by_capacity = homes.sort_by {|i| i.capacity}
  array_printer(capacity)

end

# Iteration 3: Filter by city

puts "Choose a city:"
user_city_input = gets.chomp

filter_city = homes.select do |hm|
  hm.city === user_city_input
  hm
end

# Iteration 4
average_price = homes.reduce(0) do |sum, hm|
  sum + hm.price
end

puts "The average price is:"
puts average_price / filter_city.size

# Iteration 5
puts "What is your desired price per night?"
user_price = gets.chomp.to_i


  home_price = homes.find do |hm|
    hm.price == user_price
  end

puts "The first home that costs #{user_price} is:"
puts home_price.name