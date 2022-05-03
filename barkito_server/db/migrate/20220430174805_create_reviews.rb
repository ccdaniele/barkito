class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.string :review_title
      t.string :review_description
      t.string :review_response
      t.integer :review_rank
      t.integer :review_price_rank
      t.date :review_date
      t.integer :likes
      t.integer :not_likes

      t.timestamps
    end
  end
end
