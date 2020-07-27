# basic Dog class
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

  def dog_walking
    puts 'Hooray I love outside!'
  end
end