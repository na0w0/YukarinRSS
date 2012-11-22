# coding: utf-8
require "nokogiri"
require "open-uri"
require "rss"

rss = RSS::Maker.make("2.0") do |maker|
  maker.channel.about = "rss.rdf" #rssの名前
  maker.channel.title = "information" #タイトル
  maker.channel.description = "informationの一覧を表示" #説明文
  maker.channel.link = "http://www.tamurayukari.com/information/index.html" #アクセスするサイト
  maker.items.do_sort = true #並べ替えをするかしないか

  doc = Nokogiri::HTML(open("http://www.tamurayukari.com/information/index.html")) #スクレイピングをする対象のサイト
  doc.search('//div[@id="info-right-box"]/div').each do |div|
    id = div['id']
    title = div.search('h3').inner_text
    item = maker.items.new_item #itemを生成
    item.link = 'http://www.tamurayukari.com/information/index.html#' + id 
    item.title = title
  end
end
puts rss.to_s