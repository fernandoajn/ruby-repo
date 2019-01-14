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

def warning_scored_points score
  puts "You scored #{score} points."
end

def warning_choosing_word
  puts "Choosing a champion for you..."
  puts "\n"
end

def warning_word_choosed secret_word
  puts "We choosed a champion with #{secret_word.size} caracteres, good luck!"
  secret_word
end

def warning_total_points score
  puts "You have #{score} points."
end

def warning_actual_champion data
  puts "Our top 1 summoner is #{data[0]} with #{data[1]} points."
end

def draw_gallows errors
  head = "   "
  body = " "
  legs = "   "
  arms = "   "
  if errors >= 1
      head = "(_)"
  end
  if errors >= 2
      arms = " | "
      body = "|"
  end
  if errors >= 3
      arms = "\\|/"
  end
  if errors >= 4
      legs = "/ \\"
  end

  puts "  _______       "
  puts " |/      |      "
  puts " |      #{head}  "
  puts " |      #{arms}  "
  puts " |       #{body}  "
  puts " |      #{legs}  "
  puts " |              "
  puts "_|___           "
  puts
end

def welcome
  puts "Welcome to the League of Legends gallows game!"
  puts "What is your name, summoner?"
  name = gets.strip
  puts "\n\n\n"
  puts "Let's begin, #{name}"
  name
end

def play_again?
  puts "\n\n"
  puts "Wanna play again? (Y/N)"
  answer = gets.strip
  answer.upcase == "N"
end

def attempts_header attempts, errors, mask
  puts "\n\n"
  draw_gallows errors
  puts "Champion: #{mask}" 
  puts "Errors until now: #{errors}"
  puts "Attempts until now: #{attempts}"
end

def ask_attempt
  puts "Enter a letter or the word:"
  attempt = gets.strip.upcase
  puts "Your try: #{attempt}"
  attempt
end