class Doctor < ActiveRecord::Base
  has_many :interns
  #allows you to do doctor.interns
  has_many :consultations
  has_many :patients, through: :consultations

  validates :last_name, presence: true
  #required to input last_name in order to able to save a new doctor
  validates :last_name, uniqueness: true
  #will enforce unique last_names on all doctors
  validates :first_name, uniqueness: { scope: :last_name }
  #validates both first and last name as a combination
  validates :last_name, length: { minimum: 3 }
  #minimun of characters
  #validates :email, format: { with: /\A.*@.*\.com\z/}
  #we can pass regex to validate

  validate :custom_validation

  def custom_validation
    last_name = "random name"
  end
end
