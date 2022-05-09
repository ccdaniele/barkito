class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :borough, :neighborhood, :street, :city, :zip_code, :gender, :description, :birth, :email, :password, :vendor_admin, :performer_admin, :crew_member
end
