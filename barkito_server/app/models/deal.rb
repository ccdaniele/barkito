class Deal < ApplicationRecord
    has_many :events, :menus, :users, through: :vendors
end
