class Board

  attr_accessor :cells

  def initialize
    reset!
  end

  def reset!
    @cells = Array.new(9, " ")
  end

  def display 
    puts " #{@cells[0]} | #{@cells[1]} | #{@cells[2]} "
    puts "-----------"
    puts " #{@cells[3]} | #{@cells[4]} | #{@cells[5]} "
    puts "-----------"
    puts " #{@cells[6]} | #{@cells[7]} | #{@cells[8]} "
  end

  def position(input)
    @cells[input.to_i - 1]
  end

  def full?
    @cells.all? {|x| x != " " }
    #cells.include?(" ") ? false : true
  end

  def turn_count
  count = 0
  @cells.each do |position|
    if position != " "
      count += 1
    end
  end
  count
  #cells.filter{|cell| cell != " "}.count 
  end

  
  def taken?(input)
    @cells[input.to_i - 1] != " " ? true : false   #how could I have used #position?
  end

  def valid_move?(input)
    index = input.to_i - 1
    if index >= 0 && index <= 9
      taken?(input) == false ? true: false
    end
    #!taken?(input) && input.match(/\d/) != nil
  end

  def update(input, player)
    @cells[input.to_i - 1] = player.token
  end

end


