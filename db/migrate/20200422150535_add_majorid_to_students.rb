class AddMajoridToStudents < ActiveRecord::Migration[6.0]
  def change
    add_column :students, :firstname, :string
    add_column :students, :lastname, :string
    add_column :students, :major_id, :integer
  end
end
