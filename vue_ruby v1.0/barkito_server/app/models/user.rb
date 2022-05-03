class User < ApplicationRecord
    has_many :vendors, through: :vendor_followers
    has_many :events, through: :user_events

    def my_vendors
        my_vendor_followers=VendorFollower.all.filter{|vendor_follower|vendor_follower.user.id === self.id}
        my_vendor_followers.map{|vendor_follower|vendor_follower.vendor}
    end




end
