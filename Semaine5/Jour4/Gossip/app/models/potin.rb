class Potin < ApplicationRecord
  belongs_to :user
  has_many :join_potin_tags
  has_many :tags, through: :join_potin_tags
end
