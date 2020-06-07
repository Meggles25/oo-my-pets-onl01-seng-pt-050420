class Owner
  
  attr_accessor :name, :pets, :owner 
  attr_reader :species
  
  @@all = []
  
  def initialize(name)
    @species = species
    @pets = {cats: [], dogs: []} 
    @name = name
    @owner = owner
    @@all << self
  end
  
  def name
    "Victoria"
  end  
  
  
  
  def say_species
    "I am a #{self.species}."
  end
  
  def buy_cat(cat_name)
    cat = Cat.new(cat_name)
    self.pets[:cats] << cat
  end

  def buy_dog(dog_name)
    dog = Dog.new(dog_name)
    self.pets[:dogs] << dog
  end

  def walk_dogs
    self.pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    self.pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def sell_pets
    self.pets.each do |species, animals|
      animals.each do |animal|
        animal.mood = "nervous"
      end
      animal.clear
    end
  end  

  def list_pets
    "I have #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.count
  end
end  
  

  