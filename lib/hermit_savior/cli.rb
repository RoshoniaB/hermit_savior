class CLI
  
  def call 
    Scraper.scrape_blog
    puts "Hey there hermit!!"
    puts "Crabby being confined to your shell, heres some solutions for your shell fever."
    list_todos
    gives_option
  
  end
  
  def list_todos
    Savior.all.each.with_index(1) do | savior, i |
    puts "#{i}. #{savior.todo}"
    end
  end 
  
  puts "Choose a number to get started."
  def gives_option
    input = gets.chomp 
    if !input.to_i.between?(1, Savior.all.count)
      puts "AWW sorry claws too big? Type 'list' to see the options again or type 'exit'." 
      gives_option
    else
      
      savior = Savior.all[input.to_i-1]
      display_description(savior)
     
    end   
    puts "Type 'list' to go back or 'exit' to be a crabapple:" 
    go_back = gets.strip.downcase
    if go_back == "list" 
    
    gives_option
     list_todos 
    
    elsif go_back ==  "exit"
      puts "Snap snap crabapple!!"
      exit
    else  
    puts "AWW sorry claws too big? Type 'list' or 'exit'" 
    end
  end 
  

  def display_description(savior)
    Scraper.scrape_decriptions(savior)  
    puts "Here's how-to #{savior.todo}:"
  end
  
 
  
  
  
end  