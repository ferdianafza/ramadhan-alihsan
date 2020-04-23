class AddTanggalOnReportsRamadhan < ActiveRecord::Migration[6.0]
  def change
    add_column :report_ramadhans, :tanggal, :date
  end
end
