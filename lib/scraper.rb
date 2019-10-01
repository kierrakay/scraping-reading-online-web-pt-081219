require 'nokogiri'
require 'open-uri'
 
doc = Nokogiri::HTML(open("https://flatironschool.com/"))


# How to grab HTML element and text inside element start

#puts doc.css(".headline-26OIBN")
# will print HTML elements so element and text we grabbed return nil

#doc.css(".headline-26OIBN").text
#will return only the text contained inside of element.
#end
