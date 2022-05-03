class CreatePerformers < ActiveRecord::Migration[7.0]
  def change
    create_table :performers do |t|
      t.string :performer_name
      t.string :performer_description
      t.string :performer_email
      t.string :performer_website
      t.integer :perfomer_rank
      t.string :performers
      t.string :performer_category
      t.string :performer_subcategory
      t.string :performer_content

      t.timestamps
    end
  end
end
