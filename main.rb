require './Player.rb'
require './Question.rb'
require './Game_Memory.rb'

def run_game
  
  player1 = Player.new 'Sara'
  player2 = Player.new 'Ali'
  game = Game_Memory.new player1, player2

  while (player1.score > 0) && (player2.score > 0)

    player = game.set_turn
    question = Question.new player.name
    result = question.ask_question
    game.set_point player, result
    if (player.score != 0)
      puts "   #{player1.name}: #{player1.score}/3 vs #{player2.name}: #{player2.score}/3"
      puts "\n---- NEW NAME ----"
    end
    
  end
  player = game.set_turn
  puts "\n   #{player.name} wins with a score #{player.score}/3"
  puts "\n---- GAME OVER ----"
  puts "Good bye!\n"

end

run_game