class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14) {Array.new}
    @cups.each_with_index do |cup, idx|
      if idx == 6 || idx == 13
        cup = []
      else
        4.times do
          cup << :stone
        end
      end
    end
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
  end

  def valid_move?(start_pos)
    raise "Invalid starting cup" if start_pos == 15
    raise "Invalid starting cup" if (1..14).to_a.include?(start_pos) == false
  end

  def make_move(start_pos, current_player_name)
    holder = @cups[start_pos]
    @cups[start_pos] = []

    count = start_pos

    until holder.empty?
      count += 1
      count = 0 if count > 13

      if count == 6 && current_player_name == @name1
        @cups[6].push(holder.pop)
      elsif count == 13
        @cups[13].push(holder.pop) if current_player_name == @name2
      else
        @cups[count].push(holder.pop)
      end
    end

    self.render
    self.next_turn(count)
  end

  def next_turn(ending_cup_idx)
    return :prompt if ending_cup_idx == 6 || ending_cup_idx == 13
    return :switch if @cups[ending_cup_idx].length == 1
    return ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    return true if @cups[0..5].all? {|cup| cup.empty?} || @cups[7..12].all? {|cup| cup.empty?}
    false
  end

  def winner
    return @name1 if @cups[6].length > @cups[13].length
    return @name2 if @cups[6].length < @cups[13].length
    return :draw
  end
end

# [[:stone, :stone, :stone, :stone],
#  [:stone, :stone, :stone, :stone],
#  [:stone, :stone, :stone, :stone],
#  [:stone, :stone, :stone, :stone],
#  [:stone, :stone, :stone, :stone],
#  [:stone, :stone, :stone, :stone],
#  [],
#  [:stone, :stone, :stone, :stone],
#  [:stone, :stone, :stone, :stone],
#  [:stone, :stone, :stone, :stone],
#  [:stone, :stone, :stone, :stone],
#  [:stone, :stone, :stone, :stone],
#  [:stone, :stone, :stone, :stone],
#  []]
