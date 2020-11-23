class Group < ApplicationRecord
  has_many :user_groups
  has_many :users, through: :user_groups
  has_many :wishlists, through: :user_groups
  validates :name, presence: true,
                  length: { minimum: 5 }
  validates :invite_code, presence: true,
                  length: { minimum: 5 }
end
