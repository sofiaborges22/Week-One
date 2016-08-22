require 'imdb'
require 'pry'


file = IO.read('movies.txt')
movies = IO.readlines('movies.txt')
cont = 10
while cont >= 1
	movies.each do |movie|
		search = Imdb::Search.new(movie)
		rating = search.movies[0].rating.to_i
		if rating >= cont
			print "|#|"
		else
			print "   "
		end
	end
	puts ""
	cont -=1
end
puts ""
print "-------------------"
puts ""
print "|1||2||3||4||5||6||7|"
puts""