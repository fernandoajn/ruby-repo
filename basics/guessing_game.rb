puts "Hello user!"
puts "What is your name? \n"
name = "Fernando"
puts "\n"

puts "We are going to start the game for you, " + name
secret_number = 175
puts "We selected a secret number. Why don't you try to guess what was it?"
puts "\n\n"

puts "Choose a number between 0 and 200."
puts "First attempt:"
attempt = gets
puts "Your try: " + attempt
puts attempt.to_i == secret_number

puts "\n"
puts "Second attempt:"
attempt = gets
puts "Your try: " + attempt
puts attempt.to_i == secret_number

puts "\n"
puts "Last attempt:"
attempt = gets
puts "Your try: " + attempt
puts attempt.to_i == secret_number
