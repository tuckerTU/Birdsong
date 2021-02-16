class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :album_id
      t.integer :user_id
      t.text :review_text
      t.text :star_rating

      t.timestamps null: false
    end
  end
end
