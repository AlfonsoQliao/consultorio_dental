class Dentist < ActiveRecord::Base
  has_many :patients
  has_many :appointments
  belongs_to :assistant
end
