class CreateAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|
      t.string :title
      t.string :artist
      t.string :producer
      t.string :year
      t.string :length
      t.string :genre
      t.string :average_rating

      t.timestamps null: false
    end
  end
end
