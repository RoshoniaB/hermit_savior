class Scraper

BLOG_URL = "https://www.techradar.com/news/things-to-do"
  
  def self.scrape_blog
    html = open(BLOG_URL)
    
    doc = Nokogiri::HTML(html)
    binding.pry
    
    doc.css("#article-body").css("#1-watch-the-iheart-living-room-concert")
  
  end
  
end
