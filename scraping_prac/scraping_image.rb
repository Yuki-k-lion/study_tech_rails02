require 'mechanize'
  agent = Mechanize.new
    page = agent.get("http://review-movie.herokuapp.com/")
    elements = page.search('.mini-post-image')
    
    elements.each do |ele|
        puts ele.get_attribute('src')
    end
    
    puts "======================"
      agent = Mechanize.new
    page = agent.get("http://review-movie.herokuapp.com/products/402")
    elements = page.search('.post-image')
    
    elements.each do |ele|
        puts ele.get_attribute('src')
    end
     
    puts "======================"
        
    links = [] # 個別ページのリンクを保存する配列
    agent = Mechanize.new
    current_page = agent.get("http://review-movie.herokuapp.com/")
    links = current_page.search('h2 a')
    
    links.each do |link|
        link = link.get_attribute('href')
        agent = Mechanize.new
        page = agent.get("http://review-movie.herokuapp.com/" + link)
        elements = page.search('.post-image')
        elements.each do |ele|
        puts ele.get_attribute('src')
    end
    end
    
# 模範解答
#     require 'mechanize'

# def scraping_image(link)
#   agent = Mechanize.new
#   page = agent.get(link)
#   image_url = page.at('.entry-content img').get_attribute('src')
#   return image_url
# end

# links = [] # 個別ページのリンクを保存する配列
# agent = Mechanize.new
# current_page = agent.get("http://review-movie.herokuapp.com")
# elements = current_page.search('.entry-title a')
# elements.each do |ele|
#   links << ele.get_attribute('href')
# end

# links.each do |link|
#   puts scraping_image('http://review-movie.herokuapp.com' + link)
# end