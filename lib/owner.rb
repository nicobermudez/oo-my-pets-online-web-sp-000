class Owner
  # code goes here
  attr_accessor :pets, :name, :fish, :cat, :dog
  attr_writer
  attr_reader :species

  @@all = []
  @@count = 0

  def initialize(species)
    @species=species
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def self.all
    @@all << self
  end

  def self.count
    @@count
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    self.pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    self.pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    self.pets[:dogs] << dog
  end

  def walk_dogs
    self.pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    self.pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    self.pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
    self.pets.each do |type|
      type.each {|k, v| v.mood = "nervous" }
    end
  end

  def list_pets
  end
end
