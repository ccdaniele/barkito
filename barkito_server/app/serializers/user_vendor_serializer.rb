class UserVendorSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :vendor_id
  belongs_to :user
  belongs_to :vendor
end
