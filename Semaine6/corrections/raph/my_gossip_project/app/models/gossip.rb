class Gossip < ApplicationRecord
  belongs_to :user, optional: true
  has_many :comments
  has_many :tags, through: :gossip_tags

  validates :title, presence: true
  validates :title, length: { minimum: 2 }
  validates :title, length: { maximum: 14 }
  validates :content, presence: true
end
