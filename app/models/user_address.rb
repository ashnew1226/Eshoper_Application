class UserAddress < ApplicationRecord
    has_many :user_orders
end
