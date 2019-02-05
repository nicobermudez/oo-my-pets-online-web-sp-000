class Owner
  # code goes here
  attr_reader :species
  attr_writer

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

  def species
    @species
  end

  def say_species
    puts self.species
  end
end
