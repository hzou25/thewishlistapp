class Wishlist < ApplicationRecord
  has_many :wishlist_items
  belongs_to :user_group
end
