json.extract! reservation, :id, :reservation_name, :reservation_description, :reservation_category, :reservation_subcategory, :reservation_number_people, :reservation_date, :user_id, :bar_id, :event_id, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)
