class UserVendorSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :vendor_id
<<<<<<< HEAD
  belongs_to :user
  belongs_to :vendor
=======
>>>>>>> 6d013a78 (next.js migration)
end
