class AddStageIdOnStudent < ActiveRecord::Migration[6.0]
  def change
    add_column :students, :stage_id, :integer
  end
end
