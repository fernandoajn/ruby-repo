require_relative 'ui'
require_relative 'rank'

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

def raffle_secret_word
  warning_choosing_word
  file_text = File.read('champions.txt')
  all_champions = file_text.split("\n") 
  random_number = rand(all_champions.size)
  secret_word = all_champions[random_number].upcase
  warning_word_choosed secret_word
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

  warning_scored_points score
  score
end

def gallows_game
  name = welcome
  total_score = 0

  warning_actual_champion read_rank

  loop do 
    total_score += play name
    warning_total_points total_score

    if read_rank[1].to_i < total_score
      save_rank name, total_score
    end

    break if play_again?
  end
end
