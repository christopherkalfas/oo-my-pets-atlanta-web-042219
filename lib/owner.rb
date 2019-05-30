require 'pry'

class Owner
    attr_accessor :pets, :name
    attr_reader :species

        @@OWNERS = []
        @@owner_count = 0

    def initialize(species)
        @species = species
        @pets = {fishes: [], cats: [], dogs: []}
        @name = name
        self.class.all << self
        @@owner_count +=1
    end 
    
    def self.all
        @@OWNERS
    end 

    def self.count
        @@owner_count
    end 

    def say_species
       "I am a #{self.species}."
    end 

    def self.reset_all
        @@owner_count = 0
    end 

    def buy_fish(fish_name)
        self.pets[:fishes] << Fish.new(fish_name)
    end 

    def buy_cat(cat_name)
        self.pets[:cats] << Cat.new(cat_name)
    end 

    def buy_dog(dog_name)
        self.pets[:dogs] << Dog.new(dog_name)
    end

    def walk_dogs
        self.pets[:dogs].collect { |dog| dog.mood= "happy" }
    end 

    def play_with_cats
        self.pets[:cats].collect { |cat| cat.mood= "happy" }
    end 

    def feed_fish
        self.pets[:fishes].collect { |fish| fish.mood= "happy" }
    end 

    def sell_pets
        self.pets.each do |speices, petz|
            petz.each do | ptz|
                ptz.mood = "nervous"
            end 
        end 
        self.pets.clear
    end 

    def list_pets
    
        "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
    end 
   
end 