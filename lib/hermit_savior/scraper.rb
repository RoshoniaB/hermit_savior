class Scraper

BLOG_URL = "https://www.psychologytoday.com/us/blog/intersections/202003/8-things-do-while-under-quarantine"
  
  def self.scrape_blog
    html = open(BLOG_URL)
    
    doc = Nokogiri::HTML(html)
     
     doc.css("ol")
     binding.pry 
      to_do =
      url =
      Savior.new(to_do, url)
    
  end
end
