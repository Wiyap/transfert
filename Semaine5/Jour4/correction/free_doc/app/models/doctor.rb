class Doctor < ApplicationRecord
  has_many :appointments
  has_many :patients, through: :appointments
  belongs_to :city, optional: true
  has_one :zip_code, through: :city
  has_many :ph_ds
  has_many :specialties, through: :pd_d
end
