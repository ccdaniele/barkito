class CreateDeals < ActiveRecord::Migration[7.0]
  def change
    create_table :deals do |t|
      t.string :deal_title
      t.date :deal_start_date
      t.date :deal_end_date
      t.time :deal_start_time
      t.time :deal_end_time
      t.string :deal_description
      t.integer :vendor_id
      t.integer :deal_discount
      t.string :deal_category
      t.string :deal_subcategory

      t.timestamps
    end
  end
end
