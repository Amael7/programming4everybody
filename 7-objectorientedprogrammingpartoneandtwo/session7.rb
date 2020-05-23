## OOP  ou en Français - POO
## Oriented-Object-Programmation ou en Français - Programmation Orienté Objet

# Ruby est un language orienté objet
# Comme tout les languages orienté objet, on utilise les objets pour garder de la données grâce au attributes mais aussi des comportements grâce au méthodes
# c'est-a-dire que l'on ne manipule pas que de simple données mais des objets contenant de la données et aussi des comportements

# pour créer un objet on crée une class, exemple :

class Voiture # creer une class
  def initialize(attributes = {})   # on definie une l'initialisation de la classe c'est a dire, ce dont on a besoin pour créer une instance de notre classe
    @couleur = attributes[:color]
    @marque = attributes[:marque]
    @modele = attributes[:modele]
    @annee = attributes[:annee]
    @marche = false
  end

  def bienvenue_au_nouveau_possesseur
    puts 'Bonjour, Félicitation pour votre nouvelle voiture!'
    puts "je suis une #{@marque} #{@modele} de #{@annee}, de couleur #{@couleur}"
  end

  def demarrage
    @marche = true
  end

  def en_marche?
    @marche
  end

  def self.bonjour # méthode de class
    puts "Bonjour, je suis la class #{self}"
  end

  def change_couleur!(couleur)
    @couleur = couleur
  end
end

voiture_de_steph = Voiture.new({color: 'blanche', marque: 'Toyota', modele: 'Corrola', annee: 1986})

p voiture_de_steph
p voiture_de_steph.class

voiture_de_steph.bienvenue_au_nouveau_possesseur

puts voiture_de_steph.en_marche?

voiture_de_steph.demarrage

puts voiture_de_steph.en_marche?


# pourquoi on appelle une méthode avec quelque choses avant et des fois non.

# def welcome
#   puts 'Bonjour a tous!'
# end

# voiture_de_steph.welcome # error: private method 'welcome' on object voiture

Voiture.bonjour # méthode de classe

voiture_de_steph.change_couleur!('rouge')

p voiture_de_steph

class Restaurant
  attr_reader :proprio
  attr_writer :proprio
  #attr_accessor

  def initialize(attributes = {})
    @nom = attributes[:nom]
    @ville = attributes[:ville]
    @addresse = attributes[:addresse]
    @note = attributes[:note]
    @proprio = attributes[:proprio]
  end
end

attributes = {
  nom: 'Chez Ricco',
  ville: 'Marseille',
  addresse:'Avenue Paradis',
  proprio: 'Ricco'
}

restau = Restaurant.new(attributes)

p restau.proprio

restau.proprio = 'Pauline'

p restau.proprio

