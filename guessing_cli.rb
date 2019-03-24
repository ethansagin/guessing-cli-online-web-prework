#Taking in input from the command line 
#- Comparing that input to a random number that has been generated 
#- Printing out a statement You guessed the correct number! if the number has been guessed correctly, or The computer guessed <number>. if the number has been guessed incorrectly 
#- Allowing the user to exit the program when exit is the input

def guessing_game
  
end




def run_guessing_game
  puts "Guess a number between 1 and 6."
  input = gets.chomp
  case input
    when input.between?(1..6)
      if input == rand(1..6)
        puts 
end