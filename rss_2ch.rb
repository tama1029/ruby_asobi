require 'rss'
require 'nokogiri'

rss_data = RSS::Parser.parse('http://blog.esuteru.com/index.rdf')

begin
  rss_data.items.each do |item|
    p item.title
    p item.link
    p item.respond_to?(:pubDate) ? item.pubDate : item.dc_date
    p Nokogiri::HTML.parse(item.content_encoded).css("img").attribute("src").value
    p '-------------'
  end 
end
