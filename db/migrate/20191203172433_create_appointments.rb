class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.datetime :date
      t.string :lieu
      t.references :patient, foreign_key: true, index: true
      t.references :practionner, foreign_key: true, index: true


      t.timestamps
    end
  end
end
