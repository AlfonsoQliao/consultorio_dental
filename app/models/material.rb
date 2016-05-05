class Material < ActiveRecord::Base
  has_and_belongs_to_many :appointments
  belongs_to :supplier
end
