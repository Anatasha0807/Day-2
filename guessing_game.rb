# Force Flush Ruby thingy
old_sync = $stdout.sync
$stdout.sync = true

puts "Welcome to Guessing Game"
puts "What's your name?"
name = gets.chomp
puts "Hi #{name}"

easy_secret = rand(1..10)
medium_secret = rand(1..50)
hard_secret = rand(1..100)

history = {}

puts "Please choose your level difficulty?"
puts "1 - Easy"
puts "2 - Medium"
puts "3 - Hard"

choice = gets.to_i

if choice == 1
  secret_number = easy_secret
  chances = 6
elsif choice == 2
  secret_number = medium_secret
  chances = 4
elsif choice == 3
  secret_number = hard_secret
  chances = 2
else
  exit
end

puts "Pick any number from 1 to 100?"
puts "Secret: #{secret_number}"
guess = gets.chomp.to_i

count = 1
previous_tries = []

while count < chances
  if secret_number == guess
    puts "You Are Awesome!"
    history[name] = chances - 1

    puts "Leaderboard"
    puts "==========="

    puts history
    break
  else
    puts "Try Again"
    previous_tries << guess
    puts "#{previous_tries}"
    count += 1
    guess = gets.to_i
  end

  if secret_number != guess
    puts "You Lose"
    if count == chances
      puts "Game Over"
      puts "the correct answer: #{secret_number}"
      exit
    end
  end
end
