class AddUrlPicToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :url_pic, :text
  end
end
