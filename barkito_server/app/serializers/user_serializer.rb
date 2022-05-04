class UserSerializer < ActiveModel::Serializer
  attributes :id, :nick_name, :user_name, :user_borough, :user_neighborhood, :user_street, :user_city, :user_zip_code, :gender, :user_description, :user_birth, :user_email, :password, :vendor_admin, :performer_admin, :crew_member
  has_many :user_vendors
  has_many :vendors, through: :user_vendors
end
