class Stroll < ApplicationRecord
  belongs_to :dog, optional: true
  belongs_to :dogsitter, optional: true
  belongs_to :city, optional: true
end
