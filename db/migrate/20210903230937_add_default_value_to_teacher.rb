class AddDefaultValueToTeacher < ActiveRecord::Migration[6.0]
  def change
    change_column_default :users, :teacher, false
  end
end
