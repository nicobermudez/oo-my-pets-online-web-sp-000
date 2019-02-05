class Owner
  # code goes here
  attr_accessor :pets, :name, :fish, :cat, :dog, :mood
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
    self.dog.mood = "happy"
  end

  def play_with_cats
  end

  def feed_fish
  end
end
