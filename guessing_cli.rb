#Taking in input from the command line 
#- Comparing that input to a random number that has been generated 
#- Printing out a statement You guessed the correct number! if the number has been guessed correctly, or The computer guessed <number>. if the number has been guessed incorrectly 
#- Allowing the user to exit the program when exit is the input



def run_guessing_game
  puts "Guess a number between 1 and 6."
  pc = rand(1..6)
  person = gets.chomp
  until person == "exit"
    case person
    when person.between?(1, 6)
      if person == pc
        puts "You guessed the correct number!"
      elsif person != pc
        puts "The computer guessed #{pc}."
      end
      person = gets.chomp
      pc = rand(1..6)
    else
      puts "Invalid input, guess a number between 1 and 6."
      person = gets.chomp
      pc = rand(1..6)
    end
  end
  puts "Goodbye!"
end