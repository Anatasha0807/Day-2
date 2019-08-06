# Force Flush Ruby thingy
old_sync = $stdout.sync
$stdout.sync = true

@play = true

# set initial values
@easy_secret = rand(1..10)
@medium_secret = rand(1..50)
@hard_secret = rand(1..100)
@history = {}
@previous_tries = []

puts "Welcome to Guessing Game!"

def ask_for_name
  puts "What's your name?"
  @name = gets.chomp
  return @name
end

def select_difficulty_level
  puts "Please Choose Your Level Difficulty?"
  puts "1 - Easy"
  puts "2 - Medium"
  puts "3 - Hard"

  @choice = gets.to_i
  return @choice
end

def set_default_values
  if @choice == 1
    @secret_number = rand(1..10)
    @maximum_number = 10
    @chances = 6
  elsif @choice == 2
    @secret_number = rand(1..50)
    @maximum_number = 50
    @chances = 4
  elsif @choice == 3
    @secret_number = rand(1..100)
    @maximum_number = 100
    @chances = 2
  else
    exit
  end
  return @secret_number, @maximum_number, @chances
end

def game_begins
  puts "secret_number: #{@secret_number}"
  puts "You Have #{@chances} Chances To Win This Game"
  puts "Pick Any Number From 1 To #{@maximum_number}?"
  guess = gets.chomp.to_i

  count = 1

  while count < @chances
   if @secret_number == guess
     puts "You Are Awesome!"

     @history[@name] = @chances - 1

     puts "Leaderboard"
     puts "==========="

     puts @history

     prompt_play

     # break
   else
     puts "Try Again"
     @previous_tries << guess
     puts "#{@previous_tries}"
     count += 1
     guess = gets.to_i
   end

   if @secret_number != guess
     puts "You Lose. Game Over"
     if count == @chances
       puts "The Correct Answer: #{@secret_number}"
       prompt_play
       exit
     end
   end
  end
end

def prompt_play
  puts "Do You Want To Play Again?"
  puts "Y - Yes and Play Again"
  puts "N - No and Exit"

  answer = gets.chomp
  if answer == 'y'
    run_game
  else
    exit
  end
end

def run_game
  loop do
    ask_for_name
    puts "Hi #{@name}"
    select_difficulty_level
    puts "You Choose Level #{@choice}"
    set_default_values
    game_begins
  end
end

run_game
