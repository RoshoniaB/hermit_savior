class HermitSavior::CLI
  
  def call 
    puts "Hey there hermit!!"
    puts "Crabby being confined to your shell, heres some solutions for your shell fever."
    quarantined
    gives_option
    goodbye
  end
  
  def quarantined
    puts <<-DOC.gsub /^\s*/, ''
    1. Watch the iHeart Living Room Concert
    2. Apple Arcade's latest is built for the whole family
    3. 'Tiger King' rules Netflix this weekend
    4. Trivia is back in session, right on your phone
    5. Make a movie with free Final Cut Pro X
    6. Take a trip to a virtual museum or national park
    7. Become a master chef with a meal kits service
    8. Play either Doom Eternal or Animal Crossing
    9. Watch movie series in order
    10. Read one of 100 top ebooks
    11. Discover a new podcast
    12. Clean your gadgets – physically and digitally
    DOC
    
  end
  
  def gives_option
    puts "Pick number to get started"
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