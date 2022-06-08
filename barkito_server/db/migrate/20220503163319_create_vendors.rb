class CreateVendors < ActiveRecord::Migration[7.0]
  def change
    create_table :vendors do |t|
      t.string :vendor_name
      t.string :vendor_email
      t.string :vendor_website
      t.integer :vendor_phone_number
      t.string :vendor_neighborhood
      t.string :building_number
      t.string :vendor_borough
      t.string :vendor_street
      t.string :vendor_city
      t.integer :zip_code
      t.string :vendor_category
      t.string :vendor_subcategory
      t.string :seating
      t.string :crew
      t.date :vendor_founded_date
      t.string :vendor_accepted_payment
      t.time :open_time
      t.time :closing_time
      t.string :working_days

      t.timestamps
    end
  end
end
