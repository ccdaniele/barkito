class UserSerializer < ActiveModel::Serializer
<<<<<<< HEAD
  attributes :id, :user_name, :user_borough, :user_neighborhood, :user_street, :user_city, :user_zip_code, :gender, :user_description, :user_birth, :user_email, :password_digest, :vendor_admin, :performer_admin, :crew_member
  has_many :user_vendors
  has_many :vendors, through: :user_vendors
=======
  attributes :id, :name, :username, :borough, :neighborhood, :street, :city, :zip_code, :gender, :description, :birth, :email, :password, :vendor_admin, :performer_admin, :crew_member
>>>>>>> 6d013a78 (next.js migration)
end
