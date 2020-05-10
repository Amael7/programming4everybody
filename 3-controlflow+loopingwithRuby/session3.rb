# Control Flow

puts 'Bonjour a tous !'

# if, else, elsif

heure = 12

if heure < 12
  puts "C'est le matin"
elsif heure > 12
  puts "C'est l'aprem"
else
  puts "C'est midi"
end

# unless

age = 17

unless age < 18
 puts 'tu est majeur'
end

# Boolean operator

# Operator boolean AND

username = "pauline"
password = "wagon"

if username == "pauline" && password == "wagon"
  puts 'tu est connecté'
end

# Operator boolean OR

username = "pauline"
password = "toto"

if username == "pauline" || password == "wagon"
  puts 'tu est connecté'
end

loops & iterators

# While

chiffre = 1

while chiffre < 10
  puts chiffre
  chiffre = chiffre + 1
end

# Until

until chiffre > 10
  puts chiffre
  chiffre = chiffre + 1
end

# Loop

# For

for number in 1..10
  next if number.even?
  puts number
end
number = 0

# Iterators

# Loop

loop do
  number += 1
  puts number
  break if number > 5
end

# Each

lettres = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']

lettres.each do |lettre|
  puts lettre.upcase
end

# Times

5.times do
 puts 'bonjour'
end
