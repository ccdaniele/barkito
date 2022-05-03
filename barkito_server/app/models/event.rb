class Event < ApplicationRecord
    has_many :users, :reservations, :performers, :menus, :reviews, :vendors
end
