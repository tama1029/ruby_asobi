require 'active_record'

ActiveRecord::Base.establish_connection(YAML.load_file('database.yml'))

ActiveRecord::Migration.create_table :items do |t|
  t.string :site_id, null: false, default: false
  t.string :title, null: false, default: false
  t.string :link, null: false, default: false
  t.datetime :dc_date, null: false, default: false
  t.string :image_link
  t.references :site_id, index: true, null: false

  t.timestamps
end

ActiveRecord::Migration.create_table :sites do |t|
  t.string :name, null: false, default: false
  t.string :url, null: false, default: false

  t.timestamps
end
