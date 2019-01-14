def save_rank name, score
  content = "#{name}\n#{score}"
  File.write "rank.txt", content
end

def read_rank 
  actual_content = File.read "rank.txt"
  data = actual_content.split("\n")
end