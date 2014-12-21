require 'active_record'

ActiveRecord::Base.establish_connection(YAML.load_file('database.yml'))

ActiveRecord::Migration.create_table :items do |t|
  t.string :title, null: false, default: false
  t.string :link, null: false, default: false
  t.datetime :dc_date, null: false, default: false
  t.string :image_link

  t.timestamps
end
