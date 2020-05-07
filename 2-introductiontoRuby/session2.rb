# Puts/print 

puts "----- Programming for everybody"
puts 'welcome to the Wagon'
print "this is the first lesson"
puts "with steph and pauline"
 
# DataTypes

puts "string".class # string
puts 30.class # integer
puts 1.50.class # float
puts true.class # trueclass
puts false.class # falseclass
puts nil.class # nilclass

# Variable 

my_name = "Stephane" # afféctation / assignation

puts my_name

my_name = 23 # ré-afféctation / ré-assignation 

puts my_name

# Math

# Addition
puts 4 + 3
# Substraction
puts 4 - 3 
# multiply
puts 5 * 2 
# Division
puts 10 / 2
puts 5 / 2.to_f
# Exponentiation
puts 2**3
# 2 * 2 * 2 
# Modulo
puts 25 % 7

# single line 

# Interpolation

first_name = "John"
last_name = "Lennon"

puts "this is your first name : #{first_name} , and this is your last name :#{last_name} "
puts 'this is your first name : #{first_name} , and this is your last name :#{last_name} '

# gets/chomp

puts "What's your name"
puts gets + " Wagon"

puts "What's your name"
puts gets.chomp + " Wagon"

word = 'Bonjour'
puts word.upcase
puts word.downcase

first_name = gets.chomp
last_name = gets.chomp

def full_name(first_name, last_name)
  puts "this is your full name : #{first_name} #{last_name}"
end

puts full_name(first_name, last_name)
