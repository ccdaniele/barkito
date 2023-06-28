class Vendor < ApplicationRecord
<<<<<<< HEAD
    has_many :user_vendors
    has_many :users, through: :user_vendors
    
#retrieve all the vendor's followers through the user_vendors connect table
=======
    
    #retrieve all the vendor's followers through the user_vendors connect table
>>>>>>> 6d013a78 (next.js migration)
    def my_followers
        my_user_vendors=UserVendors.all.filter{|user_vendor|user_vendor.vendor.id === self.id}
        my_user_vendors.map{|user_vendor|user_vendor.user}
    end
end
