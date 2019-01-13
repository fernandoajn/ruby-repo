def welcome
  puts "Welcome to the Guessing Game!"
  puts "\n"
  puts "What is your name?"
  name = gets
  puts "Prepare yourself, " + name
  puts "\n"
  name
end

def gets_difficulty
  puts "Choose your destiny: "
  puts "1 - Beginner / 2 - Easy / 3 - Medium / 4 - Hard / 5 - Legendary"
  difficulty = gets.to_i
  # return
  difficulty
end

def random_secret_number(difficulty)
  case difficulty
  when 1
    limit = 20
  when 2 
    limit = 40
  when 3 
    limit = 100
  when 4 
    limit = 200
  else 
    limit = 1000
  end

  raffled = rand(limit) + 1
  puts "We selected a secret number. Why don't you try to guess what was it?"
  puts "\n\n"
  puts "Choose a number between 1 and #{limit}."
  raffled
end

def ask_a_number(attempts, count, tries_limit)
  puts "\n"
  puts "Attempt #{count} of #{tries_limit}"
  puts "Attempts until now: #{attempts}"
  puts "\n"
  puts "#{count} attempt:"
  attempt = gets
  attempt.to_i
end

def verify(attempt, secret_number)
  hit_number = attempt == secret_number

  if hit_number
    puts "Gotcha!"
    puts "\n"
    return true
  end

    higher = attempt < secret_number
    if higher
      puts "\n"
      puts "Try a higher number!"
      puts "\n"
    else 
      puts "\n"
      puts "Try a lower number!"
      puts "\n"
    end
    false
end

name = welcome()

difficulty = gets_difficulty()
secret_number = random_secret_number difficulty

score_until_now = 1000
tries_limit = 5
attempts = []

for count in 1..tries_limit
  attempt = ask_a_number(attempts ,count, tries_limit)

  attempts << attempt
  lost_score = (attempt - secret_number).abs / 2.0
  score_until_now -= lost_score

  break if verify(attempt, secret_number)
end

puts "You scored #{score_until_now} points."

def play(name, difficulty)
  secret_number = random_secret_number difficulty
  
  score_until_now = 1000
  tries_limit = 5
  attempts = []
  
  for count in 1..tries_limit
    attempt = ask_a_number(attempts ,count, tries_limit)
  
    attempts << attempt
    lost_score = (attempt - secret_number).abs / 2.0
    score_until_now -= lost_score
  
    break if verify(attempt, secret_number)
  end
  
  puts "You scored #{score_until_now} points."
end

def wanna_play
  puts "Do you want to play again? (Y/N)"
  answer = gets.strip
  answer.upcase == "Y" 
end

while wanna_play
  play name, difficulty
end