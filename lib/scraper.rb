# require 'nokogiri'
# require 'open-uri'
 
# doc = Nokogiri::HTML(open("https://flatironschool.com/"))




# How to grab HTML element and text inside element..start
# put code below this under doc = Nokogiri::HTML(open("https://flatironschool.com/"))

#puts doc.css(".headline-26OIBN")
# will print HTML elements so element and text we grabbed return nil

#doc.css(".headline-26OIBN").text
#will return only the text contained inside of element.
#end
require 'nokogiri'
require 'open-uri'
 
html = open("https://flatironschool.com/")
doc = Nokogiri::HTML(html)
 
doc.css(".inlineMobileLeft-2Yo002.imageTextBlockGrid3-2XAK6G")


courses = doc.css("#2a778efd-1685-5ec6-9e5a-0843d6a88b7b .inlineMobileLeft-2Yo002.imageTextBlockGrid3-2XAK6G")
 
courses.each do |course|
  puts course.text.strip
end