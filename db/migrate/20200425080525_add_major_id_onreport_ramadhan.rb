class AddMajorIdOnreportRamadhan < ActiveRecord::Migration[6.0]
  def change
    add_column :report_ramadhans, :major_id, :integer
  end
end
