class HermitSavior::CLI
  
  def call 
    puts "Hey there hermit!!"
    quarantined
    gives_option
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
 
  def gives_option
    puts "Quarantined? or Free to crawl? or type 'exit' to be a crabapple:"
   input = nil 
    while input != "exit"
      input = gets.strip.downcase
    case input
    when "quarantined" 
      puts "More info on option 1"
    when "free_to_crawl"
      puts "More info on option 2"
      end  
    end
  end  
 
  def goodbye
    puts "Snap snap crabapple!!"
  end
  
end  