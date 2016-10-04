class AddColumnToTeacher < ActiveRecord::Migration
  def change
    add_column :teachers, :f_name, :string
    add_column :teachers, :l_name, :string
  end
end
