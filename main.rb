require_relative 'players'
require_relative 'questions'

print "What is your name Player 1 ? "
p1_name = gets.chomp
print "What is your name Player 2 ? "
p2_name = gets.chomp

player1 = Players.new(p1_name)
player2 = Players.new(p2_name)

current_player = 1

while (player1.alive? && player2.alive?) do
	
  player = (current_player == 1) ? player1 : player2

  question = Questions.new()

  puts "--------------NEW TURN--------------"

  puts "#{player.name}: #{question.sentence}"
 

  answer = gets.chomp.to_i

  if answer == question.answer
  puts "You Got It!!!"
  puts "#{player1.name} #{player1.lives}/3 lives ----- #{player2.name} #{player2.lives}/3 lives"
  else
    player.lives -= 1
    puts "Wrong !!!"
    puts "#{player1.name} #{player1.lives}/3 lives ----- #{player2.name} #{player2.lives}/3 lives"
  end

  if current_player == 1
    current_player = 0
  else 
    current_player = 1
  end

end

if player1.lives == 0
   puts "-----Winner ---> #{player2.name} with #{player2.lives}/3 lives remaining"
elsif player2.lives == 0
   puts "-----Winner ---> #{player1.name} with #{player1.lives}/3 lives remaining"
end

puts "-----------GAME OVER-----------"
puts "Cya later!"