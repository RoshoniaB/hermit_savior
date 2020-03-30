class Savior

attr_accessor :todo, :url 

@@all = []

def initialize(todo, url)
  @todo = todo
  @url = url
  @@all << self 
end

def self.all
  @@all
end


end  