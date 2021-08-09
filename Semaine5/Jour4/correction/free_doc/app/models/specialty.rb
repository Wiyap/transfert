class Specialty < ApplicationRecord
  has_many :ph_ds
  has_many :doctors, through: :pd_d
end
