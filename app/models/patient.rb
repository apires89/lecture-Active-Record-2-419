class Patient < ActiveRecord::Base
  has_many :consultations
  #patient.consulations
  has_many :doctors, through: :consultations
  #patients.doctors

end
