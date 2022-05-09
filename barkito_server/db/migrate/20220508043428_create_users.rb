class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :borough
      t.string :neighborhood
      t.string :street
      t.string :city
      t.integer :zip_code
      t.string :gender
      t.string :description
      t.date :birth
      t.string :email
      t.string :password_digest
      t.boolean :vendor_admin
      t.boolean :performer_admin
      t.boolean :crew_member

      t.timestamps
    end
  end
end
