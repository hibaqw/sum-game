class Question
  def answer 
   puts @answer = op1 + op2
  end
  def generateOperands
    @op1 = rand(20)
    @op2 = rand(20)
  end
  attr_reader :op1, :op2
end
Export = Question
