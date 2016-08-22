class Username
	def initialize(username)
		@username = username
	end
end

class Password
	def initialize(password)
		@password = password
	end
end

correct_username = Username.new("sofiaborges")
puts "What is your username?"
username_login = gets.chomp

correct_password = Password.new("borges1234")
puts "What is your password?"
user_password = gets.chomp

class Login
	def validation
		if username_login == "sofiaborges" && user_password == "borges1234"
			puts "Login successful"
		else
			puts "Try again"
		end
	end
end

class Introduction
	def introduction
		puts "Enter some text"
		@text = gets.chomp
	end
end

class Actions
	def initialize
		@user_action = ""
	end
	def menu
		puts "Select from the following menu, which action you would like?"
		puts "[1] Count words"
		puts "[2] Count characters"
		puts "[3] Reverse text"
		puts "[4] Convert text to uppercase"
		puts "[5] Convert text to lowercase"
		@user_action = gets.chomp.to_i
		
		case @user_action
		when 1
			def count_words
				puts @text.split.size
			end
		when 2
			def count_letters
				puts @text.size
			end
		when 3
			def reverse_text
				puts @text.reverse!
			end
		when 4
			def to_uppercase
				puts @text.upcase
			end
		when 5
			def to_lowercase
				puts @text.downcase
			end	
		end
	end
end

phrase = Introduction.new()
phrase.introduction
request_action = Actions.new()
request_action.menu