class CreateFriendsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :friends do |t|
      t.integer :friend_id 
      t.integer :added_friend_id
    end
  end
end
