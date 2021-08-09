class Gossip < ApplicationRecord
  belongs_to :user, optional: true
  has_many :comments
  has_many :tags, through: :gossip_tags
end
