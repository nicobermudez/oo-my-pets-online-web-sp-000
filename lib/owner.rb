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
    self.fish.name(name)
  end
end
