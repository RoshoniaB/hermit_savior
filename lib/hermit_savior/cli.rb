class HermitSavior::CLI
  
  def call 
    puts "Hey there hermit!!"
    quarantined
    free_to_crawl
  end
  
  def gives_option
    puts "Quarantined? or Free to crawl? or type 'X' to be a crabapple"
   input = nil 
    while input != "X"
      input = gets.strip.downcase
    case input
    when "1" mv
      puts "More info on option 1"
    when "2"
      puts "More info on option 2"
      end  
    end
  end  
    
  def quarantined
    puts <<-DOC.gsub /^\s*/, ''
    1. Video
    2. Books
    3. Money
    4. Games
    5. Recipies
    DOC
  end
 
  def free_to_crawl
    puts <<-DOC.gsub /^\s*/, ''
    1. New Movies
    2. Biking
    3. Resturants
    4. Art & Design
    5. Events
    DOC
  end
  
  def goodbye
    puts "Snap snap crabapple!!"
  end
  
  
end  