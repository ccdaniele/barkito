class UserVendorSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :vendor_id
end
