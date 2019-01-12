puts "Welcome to the Guessing Game!"
puts "\n"
puts "What is your name?"
name = gets
puts "\n"

puts "We are going to start the game, " + name
secret_number = 175
puts "We selected a secret number. Why don't you try to guess what was it?"
puts "\n\n"

tries_limit = 3
tentativa = 1

for count in 1..tries_limit
  puts "Choose a number between " + count.to_s + " and " + tries_limit.to_s
  puts count.to_s + " attempt:"
  attempt = gets

  hit_number = attempt.to_i == secret_number

  if hit_number
    puts "Gotcha!"
    break
  else 
    higher = attempt.to_i < secret_number
    if higher
      puts "Try a higher number"
    else 
      puts "Try a lower number"
    end
  end

  puts "\n"
end
