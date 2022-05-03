json.extract! event, :id, :event_name, :event_date, :event_description, :user_id, :bar_id, :performer_id, :reservation_id, :event_duration, :event_category, :event_subcategory, :event_price, :event_location, :created_at, :updated_at
json.url event_url(event, format: :json)
