class Review < ApplicationRecord
    belongs_to :user, :vendor
end
