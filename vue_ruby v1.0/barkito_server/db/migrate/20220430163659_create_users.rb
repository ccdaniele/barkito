class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :borough
      t.string :neighborhood
      t.string :street
      t.string :city
      t.integer :zip_code
      t.string :user_gender
      t.string :user_description
      t.date :user_date_of_birth
      t.string :user_email
      t.string :user_password_digest
      t.boolean :vendor_admin
      t.boolean :performer_admin
      t.boolean :crew_member
      t.timestamps
    end
  end
end
