class Wishlist < ApplicationRecord
  validates :name, presence: true
  has_many :wishlist_items
  belongs_to :user_group
end
