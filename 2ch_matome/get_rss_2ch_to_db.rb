require 'rss'
require 'nokogiri'
require 'mysql2'
require 'active_record'
require 'activerecord-import'

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

class Site < ActiveRecord::Base
end

p Site.all

Site.all.each do |site|
  begin
    insert_data = []
    rss_data = RSS::Parser.parse(site.rss_url)

    rss_data.items.each do |item|
      entry = Item.new
      entry.site_id = site.id
      entry.title = item.title
      entry.link = item.link
      entry.dc_date = item.respond_to?(:pubDate) ? item.pubDate : item.dc_date
      entry.image_link = Nokogiri::HTML.parse(item.content_encoded).css("img").attribute("src").value
      insert_data << entry
      p site.id
      p item.title
      p item.link
      p item.respond_to?(:pubDate) ? item.pubDate : item.dc_date
      p Nokogiri::HTML.parse(item.content_encoded).css("img").attribute("src").value
      p '-------------'
    end 

    Item.import insert_data
  end
end


