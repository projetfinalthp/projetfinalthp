class CreateDataShows < ActiveRecord::Migration[5.2]
  def change
    create_table :data_shows do |t|
    t.references :patient, foreign_key: true, index: true, on_delete: :cascade
    t.references :day, foreign_key: true, index: true, on_delete: :cascade

      t.timestamps
    end
  end
end
