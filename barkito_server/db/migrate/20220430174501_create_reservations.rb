class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.string :reservation_name
      t.string :reservation_description
      t.string :reservation_category
      t.string :reservation_subcategory
      t.integer :reservation_number_people
      t.date :reservation_date
      t.time :reservation_time
      t.integer :user_id
      t.integer :vendor_id
      
      t.timestamps
    end
  end
end
