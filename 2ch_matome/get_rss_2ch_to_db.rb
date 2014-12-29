require 'rss'
require 'nokogiri'
require 'mysql2'
require 'active_record'
require 'activerecord-import'

rss_data = RSS::Parser.parse('http://blog.esuteru.com/index.rdf')
config = YAML.load_file('database.yml')
ActiveRecord::Base.establish_connection(config)

class Item < ActiveRecord::Base
  validates :site_id,
            presence: true,
            numericality: { only_integer:  true }
  validates :title,
            presence: true,
            length: { maximum: 255 }
  validates :link,
            presence: true,
            uniqueness: true,
            length: { maximum: 255 }
  validates :image_link,
            presence: true,
            length: { maximum: 255 }
end

begin
  insert_data = []
  rss_data.items.each do |item|
    entry = Item.new
    entry.site_id = 1
    entry.title = item.title
    entry.link = item.link
    entry.dc_date = item.respond_to?(:pubDate) ? item.pubDate : item.dc_date
    entry.image_link = Nokogiri::HTML.parse(item.content_encoded).css("img").attribute("src").value
    p item.title
    p item.link
    p item.respond_to?(:pubDate) ? item.pubDate : item.dc_date
    p Nokogiri::HTML.parse(item.content_encoded).css("img").attribute("src").value
    p '-------------'
  end 
  Item.import insert_data
end
