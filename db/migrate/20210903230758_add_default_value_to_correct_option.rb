class AddDefaultValueToCorrectOption < ActiveRecord::Migration[6.0]
  def change
    change_column_default :choices, :correct_option, false
  end
end
