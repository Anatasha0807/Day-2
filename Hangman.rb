old_sync = $stdout.sync
$stdout.sync = true

@play = true
@history_answer = {}
@previous_tries = []
@secret_words = 'Thailand'
@nswer_for_play == 'y'
@total_chances = 7
@wrong_try = 0
@right_guess = ''


puts "\n<<<HANGMAN!>>>\n\n"

puts "How to play:"
puts "* Try to find the secret word which by gussing one letter at a time."
puts "* The word is the name a country and contains 7 letters."
puts "* Guess incorrectly and lose a life."
puts "* If you lose all 4 lives - You're Dead!"

puts "\nReady to play?"
puts "(Yes = Click 'Y') (No : Click 'N')"



def select_options
  @answer_for_play = gets.chomp
  @answer_for_play.downcase

  if @answer_for_play == 'y'
    puts "What's your name?"
    @username = gets.chomp
    puts "\nHi, #{@username}!\nGood Luck!"
  else
    puts "See you again!"
    exit
  end
  return @answer_for_play, @username
end

def game_begins
  puts "Jawapan: #{@secret_words}"
  puts "You have #{@total_chances} only for this game!"
  guess = gets.chomp
  count = 1

  while count < @total_chances
    if @secret_words == guess
      puts "You WIN!"

      @history[@username] = @total_chances - 1

      puts @history

    else
      puts "Try again!"
      @previous_tries << guess
      puts "#{@previous_tries}"
      count += 1
      guess = gets.chomp
    end
  end
end

select_options
game_begins
