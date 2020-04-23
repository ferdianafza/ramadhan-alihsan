class CreateReportRamadhans < ActiveRecord::Migration[6.0]
  def change
    create_table :report_ramadhans do |t|
      t.string :puasa
      t.string :tadarus
      t.string :tarawih
      t.string :subuh
      t.string :dzuhur
      t.string :ashar
      t.string :magrib
      t.string :isya
      t.string :duha
      t.string :tahajud
      t.string :taubat
      t.string :hajat
      t.string :alasan
      t.integer :student_id

      t.timestamps
    end
  end
end
