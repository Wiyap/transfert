class City < ApplicationRecord
  validates :name, presence: true
  has_many :listings
  validates :zip_code, uniqueness: true, presence: true, format: { with: /\A(([0-8][0-9])|(9[0-5])|(2[ab]))[0-9]{3}\z/, message: "please enter a valid french zip code" }
end
