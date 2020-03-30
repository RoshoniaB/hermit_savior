class CLI
  
  def call 
    Scraper.scrape_blog
    puts "Hey there hermit!!"
    puts "Crabby being confined to your shell, heres some solutions for your shell fever."
    list_todos
    gives_option
    goodbye
  end
  
  def list_todos
    Savior.all.each.with_index(1) do | savior, i |
    puts "#{i}. #{savior.todo}"
    end
  end 
   
  def gives_option
    
    input = gets.chomp 
    if !input.to_i.between?(1, Savior.all.count)
      "AWW sorry claws too big? Type 'list' or 'exit'" 
      list_todos
      gives_option
    else
      savior = Savior.all[imput.to_i-1]
      display_description(savior)
     
    end   
    puts "Type 'list' to go back or 'exit' to be a crabapple:" 
    go_back = gets.strip.downcase
    if go_back == "list" 
      list_todo
      gives_option
      
    elseif go_back ==  "exit"
      puts "Snap snap crabapple!!"
      exit
    else  
    "AWW sorry claws too big? Type 'list' or 'exit'" 
    end   
  end
  
  
 
  
end  