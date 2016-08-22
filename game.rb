class House
	
end
class Player
	def initialize (name)
		@name = name
	end
end

class BirdRoom
end

class FrozenRoom
end

class SteamRoom
end

class DiningRoom
end

class CandyRoom
	def initialize
	end
end

nombre = gets.chomp
jugador = Player.new