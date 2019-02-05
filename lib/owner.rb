class Owner
  # code goes here
  attr_reader :species
  attr_writer

  @@all = []
  @@count = 0

  def initialize(species)
    @species
  end

  def all
    @all
  end

  def species
    @species
  end

  def say_species
    puts self.species
  end
end
