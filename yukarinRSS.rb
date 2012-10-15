require "nokogiri"
require "open-uri"

rss = Nokogiri::HTML(open("http://www.tamurayukari.com/information/index.html"))
puts rss.css('//div[@id="info-right-box"]').text