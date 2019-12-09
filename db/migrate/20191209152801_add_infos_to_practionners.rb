class AddInfosToPractionners < ActiveRecord::Migration[5.2]
  def change
  	add_column :practionners, :specialty, :text
    add_column :practionners, :sexe, :string
    add_column :practionners, :adress, :string
    add_column :practionners, :diploma, :text
    add_column :practionners, :certifications, :text
  end
end
