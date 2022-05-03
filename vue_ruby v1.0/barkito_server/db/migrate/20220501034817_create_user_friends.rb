class CreateUserFriends < ActiveRecord::Migration[7.0]
  def change
    create_table :user_friends do |t|
      t.integer :user_id
      t.integer :friends_id

      t.timestamps
    end
  end
end
