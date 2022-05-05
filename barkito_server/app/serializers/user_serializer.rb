class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :user_borough, :user_neighborhood, :user_street, :user_city, :user_zip_code, :gender, :user_description, :user_birth, :user_email, :password_digest, :password_confirmation, :vendor_admin, :performer_admin, :crew_member
end
