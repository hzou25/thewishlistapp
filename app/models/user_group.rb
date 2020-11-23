class UserGroup < ApplicationRecord
  belongs_to :group
  belongs_to :user
  has_many :wishlists
end
