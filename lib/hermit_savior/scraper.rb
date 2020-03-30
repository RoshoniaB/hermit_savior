class Scraper

BLOG_URL = "https://www.techradar.com/news/things-to-do"
  
  def self.scrape_blog
    html = open(BLOG_URL)
    
    doc = Nokogiri::HTML(html)
    
     doc.css("#article-body").css("#1-watch-the-iheart-living-room-concert").each do |savior|
  
      to_do =
      url =
      Savior.new(to_do, url)
    end
  end
end
