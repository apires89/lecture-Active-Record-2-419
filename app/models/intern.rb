class Intern < ActiveRecord::Base
  belongs_to :doctor
  #allows you to do intern.doctor
  #usally goes on the same class that has the other_class_id
end
