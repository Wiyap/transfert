class Tag < ApplicationRecord
  has_many :join_potin_tags
  has_many :potins, through: :join_potin_tags
end
