
require 'pry'
require 'ruby-dictionary'

class WordChain
  def initialize(dictionary)
    @dictionary = dictionary
    @start_word = []
    @end_word = []
    @failed_attempt = []
    @attempts = []
    @backup = []
  end

  def find_chain
    puts @start_word

    while @start_word != @end_word
      last_letter = @start_word.length - 1
      @attempts = 0
      @failed_attempt = 0

     (0).upto(last_letter) do |i|

        if @start_word[i] != @end_word[i]

          @attempts += 1
          @backup = @start_word[i]
          @start_word[i] = @end_word[i]

        if @dictionary.exists?(@start_word)
            puts @start_word
        else
            @failed_attempt += 1
            @start_word[i] = @backup
        end

        end
      end
    end
  end

  def print_word
    if @attempts == @failed_attempt
      puts "FAILED!"
    end
  end
end

dictionary = Dictionary.from_file("/usr/share/dict/words")
my_chain = WordChain.new(dictionary)

my_chain.print_word("cat", "dog")
my_chain.print_word("ruby", "code")
my_chain.print_word("lead","gold")