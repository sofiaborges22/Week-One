require 'pry'

class Blog
	def initialize
		@posts = []
	end

	def add_post (post)
		# binding.pry
		@posts.push(post)
	end

	def publish_front_page
		# binding.pry
		sorted = @posts.sort {|x, y|
		 	y.date <=> x.date
		}
		sorted.each do |bl|
			puts "#{bl.title} \n #{bl.date} \n #{bl.content}"
		end
	end
end

class Post
	attr_reader :title, :date, :content
	def initialize (title, date, content)
		@title = title
		@date = date
		@content = content
	end

	def print
		"#{@title}\n + #{@date} + #{@content}"
	end
end

class Sponsored < Post
	def print
		"********#{@title}********\n + #{@date} + #{@content}"
	end
end

blog = Blog.new

blogpost1 = Post.new("My First Post", Time.new(2016, 05, 20), "Great first day!")
blogpost2 = Sponsored.new("Week Two Journal", Time.new(2016, 05, 23), "Getting there!")
blogpost3 = Post.new("Finally done!", Time.new(2016, 05, 19), "Officially a coder!")

blog.add_post(blogpost1)
blog.add_post(blogpost2)
blog.add_post(blogpost3)

blog.publish_front_page
