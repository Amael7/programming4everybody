## Array & hashes

# Array

my_array = [23, 'Pauline', 'Stephane', 'Bob', true, false]

puts my_array
p my_array

# Array index

# my_array = [23, 'Pauline', 'Stephane', 'Bob', true, false]
# index =>    0      1           2         3     4      5

puts my_array[1]

# Array add element

my_array.push('John')
my_array << 'John'

p my_array

# Array delete element

my_array.delete_at(5)

p my_array

# Hashes

# Hashes create

restaurent_menu = {
  'Pizza' => '9€',
  'Pasta' => '12€',
  'Steak' => '16€'
}

# restaurent_menu = Hash.new # restaurent_menu = {}
# restaurent_menu['Pizza'] = '9€'
# restaurent_menu['Pasta'] = '12€'

puts restaurent_menu

# Hashes read

puts restaurent_menu['Pasta']

# Hashes add to Hash

restaurent_menu['dessert'] = '8€'

puts restaurent_menu

# Hashes delete

restaurent_menu.delete('Pizza')

puts restaurent_menu

# iterate over an Array

eleves_wagon = ['Alexandre', 'Jonathan', 'Loic', 'Virginie', 'Charlotte']

eleves_wagon.each do |name|
  puts name
end

# iterate over multidimensional Array

wagon = [ ['Pauline', 'Mathieu', 'Donia'], ['Alexandre', 'Jonathan', 'Loic'] ]

wagon.each do |sous_array|
  p sous_array
  sous_array.each do |name|
    puts name
  end
end

# iterate over a Hash

restaurent_menu = {
  'Pizza' => '9€',
  'Pasta' => '12€',
  'Steak' => '16€'
}

restaurent_menu.each do |plat, prix|
  puts " voici le plat #{plat} au prix de : #{prix}"
end

## Methods & Blocks

# definition de la methode

def say_hello
  puts 'hello'
end

# appel de la methode

say_hello

# Method avec 1 parametre

def reversed_name(name)
  puts name.reverse
end

# Appel de la method avec 1 argument

reversed_name('Pauline')

# Method avec 2 parametres

def sum(chiffre1, chiffre2)
  puts chiffre1 + chiffre2
end

# Appel de la method avec 2 argument

sum(4, 3)

# splat argument

def reversed_name(*names)
  names.each do |name|
    puts name.reverse
  end
end

reversed_name('Pauline', 'John', 'Stephane', 'Charlotte')
reversed_name('Pauline')

def reversed_name(name)
  return name.reverse
end

puts reversed_name('Pauline')


