json.extract! review, :id, :review_title, :review_description, :review_rank, :review_price_rank, :review_date, :user_id, :bar_id, :performer_id, :created_at, :updated_at
json.url review_url(review, format: :json)
