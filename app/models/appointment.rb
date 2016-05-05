class Appointment < ActiveRecord::Base
  belongs_to :dentist
  belongs_to :patient
  has_and_belongs_to_many :materials
end
