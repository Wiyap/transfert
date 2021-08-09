class GossipTag < ApplicationRecord
  belongs_to :gossips, optional: true
  belongs_to :tags, optional: true
end
