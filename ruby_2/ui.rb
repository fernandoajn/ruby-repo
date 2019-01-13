def warning_repeated_attempt attempt
  puts "You already tried '#{attempt}'!"
end

def warning_results_found results
  puts "#{results} results found!"
end

def warning_no_results_found 
  puts "No results found"
end

def warning_you_won
  puts "Congratulations! You won!"
end

def warning_wrong_answer
  puts "Wrong answer!"
end

def warning_total_points score
  puts "You scored #{score} points."
end

def welcome
  puts "Welcome to the Gallows game!"
  puts "What is your name?"
  name = gets.strip
  puts "\n\n\n\n"
  puts "Let's begin, #{name}"
  name
end

def raffle_secret_word
  puts "We are choosing a word..."
  secret_word = "psycopath"
  puts "We choose a word with #{secret_word.size} caracteres, good luck!"
  secret_word
end

def play_again?
  puts "\n\n"
  puts "Wanna play again? (Y/N)"
  answer = gets.strip
  answer.upcase == "N"
end

def attempts_header attempts, errors, mask
  puts "\n\n\n"
  puts "Secret word #{mask}" 
  puts "Errors until now: #{errors}"
  puts "Attempts until now: #{attempts}"
end

def ask_attempt
  puts "Enter a letter or the word:"
  attempt = gets.strip
  puts "Your try: #{attempt}"
  attempt
end