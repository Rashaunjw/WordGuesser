class WordGuesserGame
  # add the necessary class methods, attributes, etc. here
  # to make the tests in spec/wordguesser_game_spec.rb pass.

  def initialize(word)
    @word = word
    @guesses = ''
    @wrong_guesses = ''
  end

  # Getter methods
  def word
    @word
  end

  def guesses
    @guesses
  end

  def wrong_guesses
    @wrong_guesses
  end

  # Process a guess and return true if valid, false if already guessed
  def guess(letter)
    # Validate input
    if letter.nil? || letter.empty? || !letter.match?(/[a-zA-Z]/)
      raise ArgumentError, "Invalid guess"
    end
    
    # Convert to lowercase for case-insensitive comparison
    letter = letter.downcase
    
    # Check if already guessed
    if @guesses.include?(letter) || @wrong_guesses.include?(letter)
      return false
    end
    
    # Check if letter is in the word
    if @word.include?(letter)
      @guesses += letter
      return true
    else
      @wrong_guesses += letter
      return true
    end
  end

  # Return the word with blanks for unguessed letters
  def word_with_guesses
    result = ''
    @word.each_char do |char|
      if @guesses.include?(char)
        result += char
      else
        result += '-'
      end
    end
    result
  end

  # Check if the game is won, lost, or still in progress
  def check_win_or_lose
    # Check if all letters have been guessed
    word_chars = @word.chars.uniq
    guessed_chars = @guesses.chars
    
    if word_chars.all? { |char| guessed_chars.include?(char) }
      return :win
    end
    
    # Check if too many wrong guesses (7 is the limit)
    if @wrong_guesses.length >= 7
      return :lose
    end
    
    # Game is still in progress
    :play
  end

  # Get a word from remote "random word" service
  # You can test it by installing irb via $ gem install irb
  # and then running $ irb -I. -r app.rb
  # And then in the irb: irb(main):001:0> WordGuesserGame.get_random_word
  #  => "cooking"   <-- some random word
  def self.get_random_word
    require 'uri'
    require 'net/http'
    uri = URI('http://randomword.saasbook.info/RandomWord')
    Net::HTTP.new('randomword.saasbook.info').start do |http|
      return http.post(uri, "").body
    end
  end
end
