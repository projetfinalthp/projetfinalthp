class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.datetime :date
      t.string :place
      t.references :patient, foreign_key: true, index: true, on_delete: :cascade #erreur de violation de foreign key, cette ligne permet de créer le seed sans encombre 
      t.references :practionner, foreign_key: true, index: true, on_delete: :cascade


      t.timestamps
    end
  end
end
