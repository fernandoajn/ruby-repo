require_relative 'ui'

def ask_valid_attempt attempts, errors, mask
  attempts_header attempts, errors, mask
  loop do
    attempt = ask_attempt

    if attempts.include? attempt
      warning_repeated_attempt attempt
    else
      return attempt
    end

  end
end

def masked_word attempts, secret_word
  mask = ""
  for letter in secret_word.chars
    if attempts.include? letter
      mask += letter
    else
      mask += "_"
    end
  end
  mask
end

def play(name) 
  secret_word = raffle_secret_word

  errors = 0
  attempts = []
  score = 0

  while errors < 5
    mask = masked_word attempts, secret_word
    attempt = ask_valid_attempt attempts, errors, mask
    
    attempts << attempt

    letter_attempt = attempt.size == 1
    if letter_attempt
      letter = attempt[0]
      results = secret_word.count letter 

      if results > 0 
        warning_results_found results
      else
        warning_no_results_found
        errors += 1;
      end

    else
      correct = attempt == secret_word
      if correct
        warning_you_won
        score += 100
        break
      else
        warning_wrong_answer
        score -= 30
        errors += 1
      end
    end
  end

  warning_total_points score
end

def gallows_game
  name = welcome

  loop do 
    play name
    break if play_again?
  end
end