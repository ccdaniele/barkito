class VendorSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :website, :phone_number, :neighborhood, :building_number, :borough, :street, :city, :zip_code, :category, :subcategory, :seating, :crew, :founded_date, :accepted_payment, :open_time, :closing_time, :working_days
end
