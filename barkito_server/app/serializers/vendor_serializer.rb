class VendorSerializer < ActiveModel::Serializer
  attributes :id, :vendor_name, :vendor_email, :vendor_website, :vendor_phone_number, :vendor_neighborhood, :building_number, :vendor_borough, :vendor_street, :vendor_city, :zip_code, :vendor_category, :vendor_subcategory, :seating, :crew, :vendor_founded_date, :vendor_accepted_payment, :open_time, :closing_time, :working_days
  has_many :user_vendors
  has_many :users, through: :user_vendors
 
end
