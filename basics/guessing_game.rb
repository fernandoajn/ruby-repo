def welcome
  puts "Welcome to the Guessing Game!"
  puts "\n"
  puts "What is your name?"
  name = gets
  puts "Prepare yourself, " + name
end

def random_secret_number
  raffled = 175
  puts "We selected a secret number. Why don't you try to guess what was it?"
  puts "\n\n"
  raffled
end

def ask_a_number(attempts, count, tries_limit)
  puts "Choose a number between 1 and 200"
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
      puts "Try a higher number"
      puts "\n"
    else 
      puts "Try a lower number"
      puts "\n"
    end
    false
end

welcome()
secret_number = random_secret_number()

tries_limit = 3
attempts = []

for count in 1..tries_limit
  attempt = ask_a_number(attempts ,count, tries_limit)

  attempts << attempt

  break if verify(attempt, secret_number)
end