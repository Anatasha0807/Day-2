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

puts "Please choose your level difficulty?"
puts "1 - Easy"
puts "2 - Medium"
puts "3 - Hard"

choice = gets.to_i

if choice == 1
  secret_number = easy_secret
elsif choice == 2
  secret_number = medium_secret
else choice == 3
  secret_number = hard_secret
end

puts "Pick any number from 1 to 100?"
guess = gets.chomp.to_i

count = 1
previous_tries = []

while count < 6
  if secret_number == guess
    puts "You Win"
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
    if count == 6
      puts "Game Over"
      puts "the correct answer: #{secret_number}"
      exit
    end
  end
end
