class CreateUserVendors < ActiveRecord::Migration[7.0]
  def change
    create_table :user_vendors do |t|
      t.integer :user_id
      t.integer :vendor_id

      t.timestamps
    end
  end
end
