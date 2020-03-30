class Scraper

BLOG_URL = "https://www.usatoday.com/story/life/health-wellness/2020/03/16/coronavirus-quarantine-100-things-do-while-trapped-inside/5054632002/"
  
  def self.scrape_blog
    html = open(BLOG_URL)
    doc = Nokogiri::HTML(html)
    
    
    doc.css(".gnt_ar_b").css(".gnt_ar_b_p").each do |savior|
      binding.pry
      group_1 =  
      group_2 =
      group_3 =
      group_4 =  
      group_5 =
      group_6 =
      group_7 =  
      group_8 =
      group_9 =
      group_10 =
      Savior.new(group_1, group_2, group_3, group_4, group_5, group_6, group_7, group_8, group_9, group_10)
    end
  end
end