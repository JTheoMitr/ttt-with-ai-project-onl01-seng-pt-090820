class Board

  attr_accessor :cells

  def initialize
    reset!
  end

  def reset!
    @cells = [ " ", " ", " ", " ", " ", " ", " ", " ", " " ]
  end

  def display
   print " #{cells[0]} | #{cells[1]} | #{cells[2]} "
   print "-----------"
   print " #{cells[3]} | #{cells[4]} | #{cells[5]} "
   print "-----------"
   print " #{cells[6]} | #{cells[7]} | #{cells[8]} "
  end

  def position(input)
    input = input.to_i
    cells[input - 1]
  end

  def full?
    cells.none? { |cell| cell == " "}
  end

  def turn_count
    cells.count { |cell| cell == "X" || cell == "O"}
  end

  def taken?(input)
    position(input) == "X" || position(input) == "O"
  end

  def valid_move?(input)
    input = input.to_i
    input.between?(1, 9) && !taken?(input)
  end

  def update(input, player)
    input = input.to_i
    cells[input -1] = player.token
  end

end
