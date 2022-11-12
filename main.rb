require 'pry'

class App
  def initialize 
    @number = Random.rand(1..5)
  end
  
  def game
    print "Guess a number between 1 and 5: "
    number = gets.chomp 
    binding.pry
    case number
    when @number 
      "congratulations you guessed it right"
    when 1...@number
      "Your guess was low"
    when @number...25 
      "Your guess is high"
    else
      "The number you entered is out of range "
    end 
  end 
end 

puts App.new.game