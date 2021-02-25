class ChangeAlbumsStarType < ActiveRecord::Migration[5.2]
  def change
    change_column :albums, :average_rating, :integer
  end
end
