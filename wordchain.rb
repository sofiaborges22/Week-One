require("ruby-dictionary")

class WordChain
  def initialize(dictionary)
    @dictionary = dictionary
  end

  def print_chain(start_word, end_word)
    puts "#{start_word} --> #{end_word}"
    puts start_word

    while start_word != end_word
      last = start_word.length - 1
      attempts = 0
      failed_attempts = 0

      (0).upto(last) do |i|
        if start_word[i] != end_word[i]
          attempts += 1

          letter_backup = start_word[i]
          start_word[i] = end_word[i]

          if @dictionary.exists?(start_word)
            puts start_word
          else
            start_word[i] = letter_backup
            failed_attempts += 1
          end
        end
      end

      if failed_attempts == attempts
        puts "FAILED!"
        break
      end
    end
  end
end

dict = Dictionary.from_file("/usr/share/dict/words")
chainer = WordChain.new(dict)

chainer.print_chain("cat", "dog")

puts "\n-----------\n"

chainer.print_chain("fish", "duct")

puts "\n-----------\n"

chainer.print_chain("ruby", "code")

puts "\n-----------\n"

chainer.print_chain("ruby", "skdj")