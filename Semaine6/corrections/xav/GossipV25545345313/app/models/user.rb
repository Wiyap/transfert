class User < ApplicationRecord
    belongs_to :city 
    has_many :gossips
    has_many :comments
    has_many :likes
    # brcypt hold  this
    has_secure_password
    # generate virtual field into my db
    # passsword:  string
    # passsword_confirmation:  string
    #both aren't really in my db but i can use them  like if they were with bcrypt

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :description,
    presence: true,
    length: { minimum: 20}
  validates :email,
    presence: true,
    uniqueness: true,
    format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "Veuillez rentrer l'adresse mail" }
  
  validate :age_is_real


  def age_is_real
    if age
      errors.add(:age, 'mpossible d\'avoit cet age') unless age > 0 && age < 100 
    end
  end

end
