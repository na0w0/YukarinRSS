# coding: utf-8
require "nokogiri"
require "open-uri"

rss = Nokogiri::HTML(open("http://www.tamurayukari.com/information/index.html"))

rss.search('//div[@id="info-right-box"]/div').each do |div|
	puts div['id'] 
end