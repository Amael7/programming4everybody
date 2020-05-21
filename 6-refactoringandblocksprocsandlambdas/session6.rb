## Refactorisation

# *One-line conditions*
# use them *only* when you have one condition (and no `elsif` or `else`)

# 1. One-line if statement

names = ['Pauline', 'Stephane', 'Donia', 'Mathieu']

if names.include?('Patrick')
  puts "Patrick est avec nous aujourd'hui !"
end
# will become
puts "Patrick est avec nous aujourd'hui !" if names.include?("Patrick")

##################

# *Ternary operator* (one line if-else statement)
# also here use it *only* when you have one if and one else condition!

names = ['Pauline', 'Stephane', 'Donia', 'Mathieu']

if names.include?('Patrick')
  puts "Patrick est avec nous aujourd'hui !"
else
  puts "Patrick n'est pas avec nous aujourd'hui :( !"
end
# will become
puts names.include?('Patrick') ? "Patrick est avec nous aujourd'hui !" : "Patrick n'est pas avec nous aujourd'hui :( !"

###################

# *Case statement*
# use it when you have a lot of elsif conditions!

puts "Where are you from?"
country = gets.chomp

if country == "England"
  puts "Hello!"
elsif country == "Italy"
  puts "Ciao!"
elsif country == "Portugal"
  puts "Olá!"
elsif country == "Germany"
  puts "Halo!"
else
  puts "👋"
end
# will become
case country
  when "England"
    puts "Hello!"
  when "Italy"
    puts "Ciao!"
  when "Portugal"
    puts "Olà!"
  when "Germany"
    puts "Halo!"
  else
    puts "👋"
end
# or, even shorter:
case country
  when "England" then puts "Hello!"
  when "Italy" then puts "Ciao!"
  when "Portugal" then puts "Olà!"
  when "Germany" then puts "Halo!"
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

beatles[:singer] ||= "Mick" # will not be assigned here! The singer already exists
beatles[:drummer] ||= "Ringo" # it will assign it here, because the drummer doesn't exist yet!

beatles.each do |role, name|
  puts "#{name} is the #{role}"
end

##################

# *Implicit return*
# never use the return keyword to return the last line of your method (the return is automatic!)

def reverse_and_upcase_name(name)
  reversed_name = name.reverse
  reversed_name.upcase # no return here!
end

my_name = reverse_and_upcase_name("gabriele")
puts my_name

#######################

## Blocks, Procs and Lambda

# Blocks

array = [1, 2, 6]

new_array = array.map do |number|
  number * 2 # block de code
end

p new_array

# Yield

def demo
  puts 'Bonjour'
  yield # if block_given?
  puts 'Aurevoir'
end

demo do
  puts "comment ça va ?"
end

# yield avec un paramètre

def demo
  puts 'Bonjour'
  yield('Stéphane')
  puts 'Aurevoir'
  yield('Pauline')
end

demo do |name|
  puts "comment ça va ? #{name}"
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

carre = Proc.new { |number| number**2 }
a.map!(&carre)

a.map! { |number| number**2 }
b.map! { |number| number**2 }

p a
p b

# proc avec l'exemple de la moyenne

def moyenne(eleves, moyenne, pasmoyenne)
  eleves.each do |eleve|
    if eleve[:note] >= 10
      moyenne.call(eleve)
    else
      pasmoyenne.call(eleve)
    end
  end
end

affiche_qui_a_la_moyenne = Proc.new { |eleve| puts "#{eleve[:nom]} a la moyenne" }
affiche_qui_a_pas_la_moyenne = Proc.new { |eleve| puts "#{eleve[:nom]} n'a pas la moyenne" }

moyenne(eleves, affiche_qui_a_la_moyenne, affiche_qui_a_pas_la_moyenne)

# Procs avec symbole

a = ["1", "4" , "5", 7]

a.map! { |element| element.to_i }
a.map!(&:to_i)

p a

# Lambda

def a_lambda
  a = lambda { return 'Salut' }
  a.call
  # 'Salut'
  return 'Aurevoir'
end

def a_proc
  a = Proc.new { return 'Salut' }
  a.call
  # return 'Salut'
  return 'Aurevoir'
end

p a_lambda
p a_proc

# lambda = vérifie le nombre de paramètre, return renvoie a la fonction
# proc = peu importe les paramètres, return par dessus la fonctions
# le proc prend le controle par dessus la fonction
