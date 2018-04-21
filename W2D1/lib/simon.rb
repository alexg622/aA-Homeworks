class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length =  1
    @game_over = false
    @seq = []

  end

  def play
    system 'clear'
    print "Here comes the first color"
    sleep(3)
    system 'clear'
    until @game_over
      self.take_turn
    end
    self.game_over_message
    self.reset_game
  end

  def take_turn
    self.show_sequence
    self.require_sequence
    system "clear"
    @sequence_length.times do |i|
      print "What is the  color #{i+1} \n"
      guess = gets.chomp
      system 'clear'
      @game_over = true if guess != @seq[i]
    end
    if !@game_over
      self.round_success_message
      @sequence_length += 1
    end
  end

  def show_sequence
    self.add_random_color
  end

  def require_sequence
    @seq.each do |color|
      print "#{color} \n"
      sleep(2)
    end
  end

  def add_random_color
    @seq << COLORS.sample
  end

  def round_success_message
    round = @sequence_length + 1
    print "Nice job you are moving on to round #{round}. Get ready!\n"
    sleep(3)
    system "clear"
  end

  def game_over_message
    print "You guessed the wrong color. Game over. \n"
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end

if __FILE__ == $PROGRAM_NAME
  simon = Simon.new
  simon.play
end
