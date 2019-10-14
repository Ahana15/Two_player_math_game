class Questions
  attr_accessor :answer, :sentence
  
  def initialize
    @number1 = rand(1..10)
    @number2 = rand(1..19)
    @answer = @number1 + @number2
    @sentence = "What does #{@number1} + #{@number2} equal to?"
  end
end
