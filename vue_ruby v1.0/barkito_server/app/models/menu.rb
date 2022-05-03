class Menu < ApplicationRecord
    has_many :vendors, :deals, :reviews :users
end
