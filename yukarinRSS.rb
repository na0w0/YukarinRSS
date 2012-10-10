require "nokogiri"
require "open-uri"

yukarinRSS = Nokogiri::HTML(open("http://www.tamurayukari.com/information/index.html"))
yukarinRSS.css('div.info-news-box', 'div.info-news-box-hidden').inner_text
puts yukarinRSS