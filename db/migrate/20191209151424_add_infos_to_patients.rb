class AddInfosToPatients < ActiveRecord::Migration[5.2]
  def change
  	add_column :patients, :treatment, :text
    add_column :patients, :ville, :string
    add_column :patients, :sexe, :string
    add_column :patients, :birth, :datetime
  end
end
