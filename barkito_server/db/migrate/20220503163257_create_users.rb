class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :user_borough
      t.string :user_neighborhood
      t.string :user_street
      t.string :user_city
      t.string :user_zip_code
      t.string :gender
      t.string :user_description
      t.date :user_birth
      t.string :user_email
      t.string :password_digest
      t.boolean :vendor_admin
      t.boolean :performer_admin
      t.boolean :crew_member

      t.timestamps
    end
  end
end
