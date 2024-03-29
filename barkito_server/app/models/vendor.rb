class Vendor < ApplicationRecord
    has_many :user_vendors
    has_many :users, through: :user_vendors
    
#retrieve all the vendor's followers through the user_vendors connect table
    def my_followers
        my_user_vendors=UserVendors.all.filter{|user_vendor|user_vendor.vendor.id === self.id}
        my_user_vendors.map{|user_vendor|user_vendor.user}
    end
end
