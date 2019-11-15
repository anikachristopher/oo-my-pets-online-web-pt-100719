class Owner
  # code goes here
  attr_reader :name, :species

  @@all = []
  
 def initialize(name, species = "human") 
   @name = name
   @species = species
   @@all << self
 end 
 
 def say_species
   return "I am a #{species}."
 end
 
 def self.all
   @@all
 end
 
 def self.count
   @@all.count
 end
 
 def self.reset_all
   self.all.clear
 end
 
 def cats
    @cats = Cat.all.select { |cat_obj| cat_obj.owner == self }
    @cats 
 end
 
 def dogs
    @dogs = Dog.all.select { |dog_obj| dog_obj.owner == self }
    @dogs
 end
  
 def buy_cat(name)
   @cats = Cat.new(name, self)
 end
 
 def buy_dog(name)
   @dogs = Dog.new(name, self)
 end
 
# def walk_dogs
#   @@Dogs.each do {|dog| puts "happy"}
#   end
# end
 
  # def walk_dogs
  #   @@pets[:dogs].each do |dog|
  #     dog.mood = 'happy'
  #   end
 
end