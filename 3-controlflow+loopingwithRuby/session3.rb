# Control Flow

puts 'Bonjour a tous !'

# if, else, elsif

heure = 9

if heure < 12
  puts "c'est le matin"
elsif heure > 12
  puts "c'est l'aprem"
else
  puts "c'est midi"
end

# Boolean operator

# Operator boolean AND
username = 'Pauline'
password = 'toto'

if username == 'Pauline' && password == 'wagon'
  puts 'tu es connecté !'
end

# Operator boolean OR

username = 'Pauline'
password = 'toto'

if username == 'Pauline' || password == 'wagon'
  puts 'tu est connecté !'
end

# loops & iterators

# While

chiffre = 0

while chiffre < 10
  puts chiffre
  chiffre = chiffre + 1 # chiffre += 1
end

# Until

until chiffre > 10
  puts chiffre
  chiffre = chiffre + 1 # chiffre += 1
end

# Loop

# For

for number in 1...10
  next if number.odd?
  puts number
end

# Iterators

# Loop

chiffre = 0

loop do
  puts chiffre
  chiffre += 1
  break if chiffre > 5
end


# Each

lettres = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']

lettres.each do |lettre|
  puts "voici la lettre : #{lettre} "
end

lettres.each { |lettre| puts "voici la lettre : #{lettre} " }

# Times

25.times do
  puts 'bonjour'
end















