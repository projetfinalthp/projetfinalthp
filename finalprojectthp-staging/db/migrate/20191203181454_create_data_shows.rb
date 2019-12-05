class CreateDataShows < ActiveRecord::Migration[5.2]
  def change
    create_table :data_shows do |t|
    t.references :patient, foreign_key: true, index: true, on_delete: :cascade #erreur de violation de foreign key, cette ligne permet de créer le seed sans encombre 
    t.references :day, foreign_key: true, index: true, on_delete: :cascade

      t.timestamps
    end
  end
end
