class Player

  attr_accessor :name, :score, :turn_flag

  def initialize n
    @name = n 
    @score = 3
    @turn_flag = false
  end

end