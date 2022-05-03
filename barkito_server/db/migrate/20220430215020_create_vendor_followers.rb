class CreateVendorFollowers < ActiveRecord::Migration[7.0]
  def change
    create_table :vendor_followers do |t|
      t.integer :user_id
      t.integer :vendor_id

      t.timestamps
    end
  end
end
