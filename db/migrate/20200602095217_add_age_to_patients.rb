class AddAgeToPatients < ActiveRecord::Migration[5.2]
  def  change
    add_column :patients, :age, :integer
  end
end
