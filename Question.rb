class Question

  attr_accessor :response, :result
  attr_reader :quetion, :correct_answer, :player
  

  def initialize player
    @player = player
    @num1 = rand(1..10)
    @num2 = rand(1..10)
    @question = "#{player} : What does #{@num1} plus #{@num2} equal?"
    @correct_answer = @num1 + @num2
    @response = nil
    @result = nil
  end

  def ask_question
    puts @question
    self.response = gets.chomp.to_i

    if correct_answer == response 
      puts "#{player} : YES! You are correct"
      self.result = true
    else
      puts "#{player} : Seriously? No!"
      self.result = false
    end
    result
  end

end