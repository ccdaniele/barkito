class Vendor < ApplicationRecord
    has_many :users, through: :vendor_followers

    def my_followers
        my_vendor_followers=VendorFollower.all.filter{|vendor_follower|vendor_follower.vendor.id === self.id}
        my_vendor_followers.map{|vendor_follower|vendor_follower.user}
    end
end
