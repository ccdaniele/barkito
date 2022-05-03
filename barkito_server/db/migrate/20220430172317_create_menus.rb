class CreateMenus < ActiveRecord::Migration[7.0]
  def change
    create_table :menus do |t|
      t.string :menu_name
      t.integer :vendor_id
      t.string :menu_description
      t.integer :menu_rank
      t.string :menu_category
      t.string :menu_subcategory
      t.string :menu_region
      t.integer :menu_price

      t.timestamps
    end
  end
end
