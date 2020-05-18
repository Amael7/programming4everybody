# Recap sur les arrays et Hash

# 1.Arrays

# Récap sur les index dans les arrays

   numbers = [1 , 3 , 2 , 34 , [2321, 34352 , 143434], 323]
#   index =>  0   1   2   3             4               5
#     index =>                   0      1        2

p numbers
p numbers[4]
p numbers[4][1]

# si je veux delete un element qui se trouve dans un sous array exemple le numero 34352
# j'appele le sous array en disant numbers[4] ce qui me renvoie le sous array
# puis j'applique la method .delete_at avec l'index de l'element que je veux supprimer en parenthèse
# exemple :
numbers[4].delete_at(1)
p numbers


# Create an array

beatles = ['John', 'Paul', 'George', 'Ringo']

p beatles

# Add element to array

beatles << 'Bob' # beatles.push('Bob')
p beatles

# Read

p beatles[2]
p beatles[7] # obtenir nil

# or in a loop:
beatles.each do |beatles|
  puts beatles
end

# Update

beatles[3] = 'Ringos'
p beatles

# Delete
beatles.delete_at(4)
p beatles

# 2. Hash

# Create

beatles = {
  'singer' => 'John',
  'guitarist' => 'Paul',
  'bassist' => 'George',
  'drummer' => 'Ringo'
}

p beatles

# Read

p beatles['singer']
p beatles['guitarist']
p beatles['pianist'] # nil

# or in a loop:
beatles.each do |role, name|
  puts "the #{role} is #{name}"
end

# Add element to Hash

beatles['pianist'] = 'Bob'

p beatles

# Update

beatles['pianist'] = 'Jack'
p beatles

# Delete

beatles.delete('pianist')
p beatles


##############################

# Symbols

 my_symbol = :this_is_a_symbol
 puts my_symbol
 p my_symbol
 p my_symbol.class

# Convert strings to symbols
  test = 'string'
  p test
  test = 'string'.to_sym
  p test


# Refactorisation de notre Hash beatles

# Create
beatles = {
  singer: 'John',
  guitarist: 'Paul',
  bassist: 'George',
  drummer: 'Ringo'
}

p beatles
# Add element to Hash

beatles[:pianist] = 'Bob'


# Read
p beatles[:singer]
p beatles[:singer2]

# Update

beatles[:pianist] = 'Jack'
p beatles
Delete

beatles.delete(:pianist)
p beatles

#############################

beatles.each_key do |role|
  puts role
end

# la meme choses que de faire

beatles.keys.each do |role|
  puts role
end

# afficher les valeurs

beatles.each_value do |name|
  puts name
end

# la meme choses que de faire

beatles.values.each do |name|
  puts name
end

puts beatles.key?(:singer2)
puts beatles.key?(:drummer)



