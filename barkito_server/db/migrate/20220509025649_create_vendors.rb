class CreateVendors < ActiveRecord::Migration[7.0]
  def change
    create_table :vendors do |t|
      t.string :name
      t.string :email
      t.string :website
      t.integer :phone_number
      t.string :neighborhood
      t.string :building_number
      t.string :borough
      t.string :street
      t.string :city
      t.integer :zip_code
      t.string :category
      t.string :subcategory
      t.string :seating
      t.string :crew
      t.date :founded_date
      t.string :accepted_payment
      t.time :open_time
      t.time :closing_time
      t.string :working_days

      t.timestamps
    end
  end
end
