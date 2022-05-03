class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.integer :performer_id
      t.string :event_name
      t.date :event_start_date
      t.date :event_end_date
      t.time :event_start_time
      t.time :event_end_time
      t.string :event_description
      t.boolean :with_vendor
      t.string :event_category
      t.string :event_subcategory
      t.integer :event_price
      t.string :borough
      t.string :street
      t.string :city
      t.integer :zip_code
      t.string :neighborhood
      

      t.timestamps
    end
  end
end
