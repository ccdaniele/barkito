class User < ApplicationRecord
    has_many :user_vendors
    has_many :vendors, through: :user_vendors
    validates :nick_name, uniqueness: { case_sensitive: false }

#retrieve all the vendors of the user through the user_vendors connect table
    def my_vendors
        my_user_vendors=VendorFollower.all.filter{|user_vendor|user_vendor.user.id === self.id}
        my_user_vendors.map{|user_vendor|user_vendor.vendor}
    end
end
