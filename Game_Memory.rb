class Game_Memory

  attr_accessor :p1, :p2

  def initialize(player1, player2)
    @p1 = player1
    @p2 = player2
  end

  def set_turn
    if !(p1.turn_flag || p2.turn_flag)
      p1.turn_flag = true
      return p1
    elsif p1.turn_flag
      p1.turn_flag = false
      p2.turn_flag = true
      return p2
    else
      p1.turn_flag = true
      p2.turn_flag = false
      return p1
    end
  end   

  def set_point(player, result)
    if !result
      player.score -= 1
    end
  end  
end