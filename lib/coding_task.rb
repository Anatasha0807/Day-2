old_sync = $stdout.sync
$stdout.sync = true

date = [91, 89, 213, 1, 4]

date[]

def array(date)
  puts date.sort
end
#array(date)


#hash = [{name: 'Bella', age: 8}, {name: 'Iry', age: 8}, {name:'Ayden', age: 7}]

def name_age(details)
  details.each do |obj|
    puts "My name is #{obj[:name]}. I am #{obj[:age]} years old."
  end
end

players = [{ name: 'Zlatan', brand: 'Nike'}, { name: 'Walcott', brand: 'ADIDAS'},
           { name: 'Roberts', brand: 'nike'}, { name: 'Hamilton', brand: 'puma'},
           { name: 'Rossi', brand: 'adidas'}, { name: 'Muller', brand: 'nike'},
           { name: 'Schwans', brand: 'PUMA'}, { name: 'Miller', brand: 'UMBRO'}
           

def fb(players)
  adidas = []
  nike = []
  nike[0]

  players.each do |obj|
    if obj[:brand].upcase == 'NIKE'
      nike << obj[:name]
    elsif obj[:brand].upcase == 'ADIDAS'
      adidas << obj[:name]
    end
  end
  {nike: nike, adidas: adidas}
end
