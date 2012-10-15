require "nokogiri"
require "open-uri"

yukarinRSS = Nokogiri::HTML(open("http://www.tamurayukari.com/information/index.html"))
puts yukarinRSS.css('//div[@id="info-right-box"]').text