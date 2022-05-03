class UserEvent < ApplicationRecord
    belongs_to :user, :event
end
