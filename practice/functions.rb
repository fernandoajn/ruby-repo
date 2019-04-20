def hello
  puts "Hello, what is your name?"
  name = gets.strip()
  puts "Welcome, #{name}"
end

def first_numbers
  for i in 0..99
    puts i
  end
end

def is_acid ph
  if ph < 7
    puts "It's acid!"
  elsif ph > 7
    puts "It's basic!"
  else
    puts "It's neutral"
  end 
end

def add_numbers vector
  for i in 0..20
    vector.push(i)
  end
end

def searching_for_pairs vector
  add_numbers(vector)
  for i in vector
    i%2 == 0 ? (puts "#{i} is pair!\n") : (puts "#{i} is odd!\n")  
  end
end

def upper_string array
  array = ["a", "b", "c"]
  array.map{ |string| string.upcase }
end