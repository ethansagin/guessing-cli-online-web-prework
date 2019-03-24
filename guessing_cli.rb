#Taking in input from the command line 
#- Comparing that input to a random number that has been generated 
#- Printing out a statement You guessed the correct number! if the number has been guessed correctly, or The computer guessed <number>. if the number has been guessed incorrectly 
#- Allowing the user to exit the program when exit is the input

def rand_num
  rand(1..6)
end

def exit_game
  puts "Goodbye!"
end

def run_guessing_game
  puts "Guess a number between 1 and 6."
  input = gets.chomp
  rand_num
  until input == "exit"
    case input
    when input.between?(1..6)
      if input == rand_num
        puts "You guessed the correct number!"
      elsif input != rand_num
        puts "The computer guessed #{rand_num}."
      end
      input = gets.chomp
      rand_num
    else
      puts "Invalid input, guess a number between 1 and 6."
      input = gets.chomp
      rand_num
    end
  end
  exit_game
end