class User < ApplicationRecord
<<<<<<< HEAD
    has_many :user_vendors
    has_many :vendors, through: :user_vendors

#retrieve all the vendors of the user through the user_vendors connect table
=======
    has_secure_password
    has_secure_password :recovery_password, validations: false
    validates :username, uniqueness: { case_sensitive: false }

    #retrieve all the vendors of the user through the user_vendors connect table
>>>>>>> 6d013a78 (next.js migration)
    def my_vendors
        my_user_vendors=VendorFollower.all.filter{|user_vendor|user_vendor.user.id === self.id}
        my_user_vendors.map{|user_vendor|user_vendor.vendor}
    end
<<<<<<< HEAD
=======


>>>>>>> 6d013a78 (next.js migration)
end
