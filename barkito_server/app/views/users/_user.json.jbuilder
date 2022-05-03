json.extract! user, :id, :user_name, :user_address, :user_gender, :user_description, :user_date_of_birth, :user_email, :user_password_digest, :vendor_id, :performer_id, :friend_user_id, :menu_id, :event_id, :reservation_id, :review_id, :bar_admin, :performer_admin, :crew_member, :created_at, :updated_at
json.url user_url(user, format: :json)
