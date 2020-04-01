
class Scraper

  BLOG_URL = "https://www.psychologytoday.com/us/blog/intersections/202003/8-things-do-while-under-quarantine"
  
  def self.scrape_blog
    html = open(BLOG_URL)
  
    doc = Nokogiri::HTML(html)

    doc.css('ol').css('li').each do |savior|
      todo = savior.css('strong').text
   
      description = savior.text
      Savior.new(todo, description)
    end
  end
  
  def self.scrape_decriptions(savior)
    html = open(BLOG_URL+savior.description)
    doc = Nokogiri::HTML(html)
    
    description = savior.text
   
   
    
     
  end
  
  
  
end