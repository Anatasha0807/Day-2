old_sync = $stdout.sync
$stdout.sync = true

@students = []

def input_data
  @students.each do |obj|
    File.open("student_directory.csv", "a") { |file| file.puts "#{obj[:name]}, #{obj[:age]}, #{obj[:gender]}" }
  end
end

def student_name
  puts "Please enter Student's Full Name:"
end

def student_age
  puts "Please enter Student's Age:"
end

def student_gender
  puts "Please enter Student's Gender:"
  puts "Press F for Female."
  puts "Press M for Male."
end



def user_input
  student_name
  name = STDIN.gets.chomp

  student_age
  age = gets.chomp

  student_gender
  gender = gets.chomp

  @students << {name: name, age: age, gender: gender}
  puts "We have #{@students.count} students in the list."
  input_data
  prompt_entry
end


  def prompt_entry
    puts "Do you wish to add more student"
    puts "Pres Y for Yes."
    puts "Press N for No."

    answer = gets.chomp
    if answer.downcase == "Y"
      user_input
    else
      exit
    end
  end

  user_input
  print(@students)
