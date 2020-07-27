# this is the class of doing
# this is silly, I made it a dog instead - Alec
class Dog
  attr_reader :breed
  attr_accessor :name

  @@all = []

  def initialize(p = {})
    @name, @breed = p[:name], p[:breed]

    self.save
  end

  def self.all
    @@all
  end

  def save
    self.all << self
  end
end