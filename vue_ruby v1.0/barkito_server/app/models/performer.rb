class Performer < ApplicationRecord
    has_many :users, :vendors, :reviews, :events
end
