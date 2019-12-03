class CreateDataShows < ActiveRecord::Migration[5.2]
  def change
    create_table :data_shows do |t|
    t.references :patient, foreign_key: true, index: true
    t.references :day, foreign_key: true, index: true

      t.timestamps
    end
  end
end
