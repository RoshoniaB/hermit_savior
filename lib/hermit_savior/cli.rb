class HermitSavior::CLI
  
  def call 
    puts "Hey there hermit!!"
    puts "Quarantined? or Free to crawl?"
    Quarantined
    free_to_crawl
  end
  
  def Quarantined
    puts <<-DOC
    1. Video
    2. Books
    3. Money
    4. Games
    5. Recipies
  DOC
  
end  