## Array & hashes

# Array

my_array = ["Bob", "Joe", "Zack"]

p my_array

my_array << 'Joyce' # equivaut a my_array.push('Joyce')

puts my_array

# Array index

  # my_array = ["Bob", "Joe", "Zack"]
  # index =>      0      1      2

puts my_array[1]


my_array.delete_at(1)

puts my_array

# Hashes


# Hashes create

restaurant_menu = {
  'pizza' => '10€',
  'pasta' => '12€',
  'steak' => '18€'
}

# Hashes read

p restaurant_menu['pizza']

# Hashes add & delete

restaurant_menu['dessert'] = '8€'

p restaurant_menu

restaurant_menu.delete('dessert')

puts restaurant_menu

# iterate over an Array

my_array.each do |name|
  puts name
end

# iterate over multidimensional Array

# iterate over a Hash

restaurant_menu.each do |plat, prix|
  puts "le plat est #{plat} au prix de : #{prix} "
end

## Methods & Blocks

# definition de la méthode

def say_hello
  puts 'hello'
end

# appel de la méthode

say_hello

# Method avec 1 parametre

def reversed_name(name)
  puts "ton nom a l'envers : #{name.reverse}"
end
# Appel de la method avec 1 argument

reversed_name('Stephane')
reversed_name('Pauline')

# Method avec 2 parametres

def sum(chiffre1, chiffre2)
  puts chiffre1 + chiffre2
end

# Appel de la method avec 2 argument

sum(3, 4)

# splat argument

def print_reversed_names(*names)
  names.each do |name|
    puts name.reverse
  end
end

print_reversed_names('Pauline', 'Stephane', 'John')
