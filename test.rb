# coding: utf-8
require "nokogiri"
require "open-uri"

rss = Nokogiri::HTML(open("http://www.tamurayukari.com/information/index.html"))

rss.search('//div[@id="info-right-box"]/div').each do |div|
	puts div['id']
	puts div.search('h3').text
end
#id
#info-entry-title
#の順にidごとに表示させたい