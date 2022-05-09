class User < ApplicationRecord
    has_secure_password
    has_secure_password :recovery_password, validations: false
    validates :username, uniqueness: { case_sensitive: false }

    #retrieve all the vendors of the user through the user_vendors connect table
    def my_vendors
        my_user_vendors=VendorFollower.all.filter{|user_vendor|user_vendor.user.id === self.id}
        my_user_vendors.map{|user_vendor|user_vendor.vendor}
    end


end
