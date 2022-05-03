class Reservation < ApplicationRecord
    belongs_to :user, :vendor
end
