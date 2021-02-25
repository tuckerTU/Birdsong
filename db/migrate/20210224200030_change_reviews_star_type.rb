class ChangeReviewsStarType < ActiveRecord::Migration[5.2]
  def change
    change_column :reviews, :star_rating, :integer
  end
end
