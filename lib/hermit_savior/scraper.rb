
class Scraper

  BLOG_URL = "https://www.psychologytoday.com/us/blog/intersections/202003/8-things-do-while-under-quarantine"
  
  def self.scrape_blog
    html = open(BLOG_URL)
    
    doc = Nokogiri::HTML(html)
    
    doc.css('ol').css('li').each do |lazy|
     
      todo = lazy.css('strong').text
      description = lazy.text
      Lazy.new(todo, url)
    end
  
  
  end
end
