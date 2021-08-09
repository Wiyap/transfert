class User < ApplicationRecord
  belongs_to :city, optional: true
  has_many :gossips
  has_many :comments
  has_secure_password
  
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :description, presence: true
  validates :email, presence: true
   
   #format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "email adress please" }
  validates :age, presence: true
  validates :password, presence: true
  validates :password, length: {minimum: 6}
end

