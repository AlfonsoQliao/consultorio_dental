class Patient < ActiveRecord::Base
  belongs_to :dentist
  has_many :appointments
end
