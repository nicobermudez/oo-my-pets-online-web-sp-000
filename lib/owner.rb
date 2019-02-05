class Owner
  # code goes here
  attr_reader :species, :name
  attr_writer :name

  @@all = []
  @@count = 0

  def initialize(species)
    @species=species
  end

  def self.all
    @@all
  end

  def self.count
    @@count
  end

  def self.say_species
    puts "I am a #{self.species}."
  end
end
