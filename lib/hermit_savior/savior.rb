class Savior

  attr_accessor :todo, :description 

  @@all = []

  
  def initialize(todo, description)
    @todo = todo
    @description = description
    @@all << self 
  end 

  def self.all
    @@all
  end


end  