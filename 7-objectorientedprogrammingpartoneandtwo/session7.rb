## OOP  ou en Français - POO
## Object-oriented-Programming ou en Français - Programmation Orienté Objet

# Ruby est un language orienté objet
# Ruby comme tout les language orienté objet utilise des attributs et des methodes
# les attributs stock de la donnèes
# les methodes stock des comportements

# comment créer un objet :

# 'bonjour'.class # => String

class Voiture # => Voiture
  # attr_reader :marche, :etat, :couleur # permet de lire de la donnèes
  # attr_writer :couleur  # permet d'ecrire sur une données
  attr_accessor :couleur, :marche, :etat # deux en un, permet d'ecrire et de lire de la donnèes

 def initialize(attributes = {})
  @couleur = attributes[:couleur]  # variable d'instance caractérisé par le @
  @marque = attributes[:marque]  # variable d'instance caractérisé par le @
  @modele = attributes[:modele]  # variable d'instance caractérisé par le @
  @annee = attributes[:annee]  # variable d'instance caractérisé par le @
  @marche = false  # variable d'instance caractérisé par le @
  @etat = true  # variable d'instance caractérisé par le @
 end

 def bienvenue_au_nouveau_acheteur # methode d'instance
   puts 'Bonjour, Félicitation pour votre nouvel achat !'
   puts "Je suis une #{@marque} #{@modele} de #{@annee} et de couleur #{@couleur}."
 end

 def demarrage # methode d'instance
   @marche = true
 end

 def self.bonjour # Methode de class grace a l'instruction self.nom de la methode, applicable que sur la class
   puts "Bonjour, je suis dans la classe #{self}"
 end
end

attributes = {
  couleur: 'blanc',
  marque: 'Toyota',
  modele: 'Corrola',
  annee: 1986,
}

# p attributes

voiture_de_pauline = Voiture.new(attributes)

 p voiture_de_pauline

 voiture_de_pauline.bienvenue_au_nouveau_acheteur

# p voiture_de_pauline.en_marche?
p voiture_de_pauline.marche

voiture_de_pauline.demarrage

# p voiture_de_pauline.en_marche?
p voiture_de_pauline.marche

p voiture_de_pauline

p voiture_de_pauline.couleur # => la couleur est 'blanc'

voiture_de_pauline.couleur = 'rouge' # ré-afféctation de la données couleur de notre voiture, elle passe de blanc a rouge grâce aux attr

p voiture_de_pauline.couleur # => la couleur est 'rouge'

p voiture_de_pauline.etat
