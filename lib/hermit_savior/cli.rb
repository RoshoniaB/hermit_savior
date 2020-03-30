class CLI
  
  def call 
    Scraper.scrape_blog
    puts "Hey there hermit!!"
    puts "Crabby being confined to your shell, heres some solutions for your shell fever."
    quarantined
    gives_option
    goodbye
  end
  
  def quarantined
    puts <<-DOC.gsub /^\s*/, ''
    
      1. Videogames
      2. Books
      3. Games
      4. Recipies
    DOC
  end
  
  def gives_option
    puts "Pick a category by number to get started"
    input = nil 
      puts "Type list to go back or 'exit' to be a crabapple:"
    while input != "exit"
      input = gets.strip.downcase
    case input
    when "1" 
      puts "More info on option 1"
    when "2"
      puts "More info on option 2"
    when "list" 
      quarantined
    else
      puts "AWW sorry claws too big? Type 'list' or 'exit'"
      end 
    end
  end  
 
  def goodbye
    puts "Snap snap crabapple!!"
  end
  
end  