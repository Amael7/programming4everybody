## Refactorisation

# *One-line conditions*
# use them *only* when you have one condition (and no `elsif` or `else`)

# 1. One-line if statement

names = ['Pauline', 'Stephane', 'Donia']

if names.include?('Patrick')
  puts "Patrick est avec nous aujourd'hui !"
end

# will become

puts "Patrick est avec nous aujourd'hui !" if names.include?('Patrick')

##################

# *Ternary operator* (one line if-else statement)
# also here use it *only* when you have one if and one else condition!

if names.include?('Patrick')
  puts "Patrick est avec nous aujourd'hui !"
else
  puts "Patrick n'est pas avec nous aujourd'hui !"
end

# will become

puts names.include?('Patrick') ? "Patrick est avec nous aujourd'hui !" : "Patrick n'est pas avec nous aujourd'hui !"

###################

# *Case statement*
# use it when you have a lot of elsif conditions!

puts "Where are you from?"
country = gets.chomp

if country == 'England'
  puts 'Hello'
elsif country == 'France'
  puts 'Bonjour'
elsif country == 'Japan'
  puts 'Konnichiwa'
else
  puts "👋"
end

# or, even shorter:

case country
when 'England' then puts 'Hello'
when 'France' then puts 'Bonjour'
when 'Japan' then puts 'Konnichiwa'
else puts "👋"
end

#################

# *Conditional assignment*
# you assign a variable *only* if the variable is not already defined

beatles = {
  singer: "John",
  guitarist: "Paul",
  bassist: "George",
}

beatles[:singer] ||= 'Pauline'
beatles[:drummer] ||= 'steph'

p beatles

##################

# *Implicit return*
# never use the return keyword to return the last line of your method (the return is automatic!)

def reverse_and_upcase_name(name)
  reversed_name = name.reverse
  reversed_name.upcase # no return here!
end

my_name = reverse_and_upcase_name("pauline")
puts my_name


# block one line

['Pauline', 'Steph'].each { |name| puts name.upcase }

#######################

## Blocks, Procs and Lambda

# Blocks

 array = [1, 2, 6]

 new_array = array.map do |number|
  number * 2
 end

 p new_array

# Yield

 def demo
   puts 'je suis dans la methode'
   puts "Bonjour"
   yield if block_given?
   puts 'je suis dans la methode'
   puts "Aurevoir"
 end

 demo do
   puts 'je suis dans le yield'
   puts 'Comment tu vas ?'
 end

# yield avec un paramètre

def demo
 puts 'je suis dans la methode'
 puts "Bonjour"
end

#  yield('Pauline')

 puts 'je suis dans la methode'
 puts "Aurevoir"

 yield('Stephane')

# end

demo do |name|
  puts 'je suis dans le yield'
  puts "Comment tu vas #{name} ?"
end

# exemple concret avec un yield

eleves = [
  { note: 15, nom: 'Pauline' },
  { note: 5, nom: 'Henry' },
  { note: 10, nom: 'Stephane' },
  { note: 17, nom: 'John' }
]

def moyenne(eleves)
  eleves.each do |eleve|
    if eleve[:note] >= 10
      yield(eleve)
    end
  end
end

moyenne(eleves) do |eleve|
  puts "#{eleve[:nom]} a la moyenne"
end

# procs

a = [1, 2, 3, 7]
b = [1, 5, 9]

carre = Proc.new { |nombre| nombre**2 }

a.map!(&carre)
b.map!(&carre)

p a
p b

a = ["1", "4", "5", 7]

# a.map! { |nombre| nombre.to_i }
a.map!(&:to_i)
p a

# Lambda

def a_lambda
  a = lambda { return 'Salut'}
  a.call
  'Salut'
  return 'Aurevoir'
end

def a_proc
  a = Proc.new { return 'Salut'}
  a.call
  return 'Salut'
  return 'Aurevoir'
end

p a_lambda
p a_proc

# lambda = vérifie le nombre de paramètre, return renvoie a la fonction
# proc = peu importe les paramètres, return par dessus la fonctions
# le proc prend le controle par dessus la fonction



