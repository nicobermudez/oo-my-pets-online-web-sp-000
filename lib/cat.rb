class Cat
  # code goes here
  attr_reader :name, :mood
  attr_writer

  def initialize(name)
    @name=name
    @mood="nervous"
  end
end
