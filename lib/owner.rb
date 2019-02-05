class Owner
  # code goes here
  attr_writer :name. :pets
  attr_reader :species, :name, :pets

  @@all = []
  @@count = 0

  def initialize(species)
    @species=species
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def self.all
    @@all
  end

  def self.count
    @@count
  end

  def say_species
    "I am a #{self.species}."
  end

  def pets
end
