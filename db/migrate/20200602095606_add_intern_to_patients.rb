class AddInternToPatients < ActiveRecord::Migration[5.2]
  def  change
    add_reference :patients, :intern, foreign_key: true
  end
end
