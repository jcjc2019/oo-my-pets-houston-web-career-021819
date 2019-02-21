require 'cat.rb'
require 'dog.rb'
require 'fish.rb'

class Owner
  # code goes here
  @@all = []

  attr_reader :species
  attr_accessor :name, :pets

  def initialize(pets)
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self #add all instances to an empty array
  end


  def species
    @species = "human"
  end

  def say_species
    "I am a #{self.species}."  #self.species to refer to the .species method
  end

  def name
    @name
  end

  def self.all
    @@all
  end

#count number of owners in the all array
  def self.count
    @@all.length
  end

#reset all to empty array
  def self.reset_all
    @@all = []
  end


  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end


  def play_with_cats
    @pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def walk_dogs
    @pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
    @pets.each do |pet_specie, pet|
      pet.each {|i| i.mood = "nervous"}
    end
    @pets = []

  end

  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end

end
