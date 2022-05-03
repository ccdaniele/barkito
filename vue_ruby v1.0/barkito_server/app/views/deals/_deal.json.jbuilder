json.extract! deal, :id, :deal_title, :deal_start_time, :deal_end_time, :deal_description, :bar_id, :deal_discount, :event_id, :deal_category, :deal_subcategory, :created_at, :updated_at
json.url deal_url(deal, format: :json)
