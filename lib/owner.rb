require "pry"
class Owner
  
  attr_reader :name, :species
  attr_accessor :cats
  
  @@all = []
  
  
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @cats = []
  end
  
  def say_species
    return "I am a #{@species}."
  end
  
  def self.all 
   @@all
  end
  
  def self.count
    self.all.length
  end
  
  def self.reset_all
    self.all.clear
  end
  
  def cats 
    Cat.all.map
    binding.pry
  end
end