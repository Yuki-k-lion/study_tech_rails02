require 'mechanize'

    agent = Mechanize.new
    page = agent.get("https://app-mooovi.herokuapp.com/works/initial_scraping")
    elements = page.search('p')
    puts elements 
    
    elements.each do |ele|
        puts ele.inner_text
    end
    
    puts "=========================="
    
    agent = Mechanize.new
    page = agent.get("https://app-mooovi.herokuapp.com/works/first_scraping")
    elements = page.search('li')
    puts elements 
    
    elements.each do |ele|
        puts ele.inner_text
    end
    
     puts "=========================="
    
    agent = Mechanize.new
    page = agent.get("https://app-mooovi.herokuapp.com/works/second_scraping")
    elements = page.search('div div')
    puts elements 
    
    elements.each do |ele|
        puts ele.inner_text
    end
    
     puts "=========================="
    
    agent = Mechanize.new
    page = agent.get("https://app-mooovi.herokuapp.com/works/third_scraping")
    elements = page.search('.etc')
    puts elements 
    
    elements.each do |ele|
        puts ele.inner_text
    end
    