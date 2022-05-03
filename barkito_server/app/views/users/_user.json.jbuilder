json.extract! user, :id, :user_name, :string, :user_borough, :string, :user_neighborhood, :string, :user_street, :string, :user_city, :string, :user_zip_code, :string, :gender, :user_description, :user_birth, :user_email, :password_digest, :vendor_admin, :performer_admin, :crew_member, :created_at, :updated_at
json.url user_url(user, format: :json)
