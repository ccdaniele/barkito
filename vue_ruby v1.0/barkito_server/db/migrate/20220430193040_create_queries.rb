class CreateQueries < ActiveRecord::Migration[7.0]
  def change
    create_table :queries do |t|
      t.integer :user_id
      t.date :query_start
      t.time :query_start_time
      t.date :query_end
      t.time :query_end_time
      t.string :neighborhood
      t.integer :zip_code
      t.string :city
      t.date :date_start
      t.date :date_end
      t.boolean :vendor
      t.boolean :event
      t.boolean :performer
      t.boolean :menu
      t.string :category
      t.string :subcategory
      t.integer :ranking
      t.string :sitting
      t.boolean :user
      t.string :user_name
      t.string :vendor_name
      t.string :event_name
      t.integer :price_rank
      t.integer :review_rank
      t.string :deal_name
      t.string :menu_name
      t.string :deal_discount

      t.timestamps
    end
  end
end
