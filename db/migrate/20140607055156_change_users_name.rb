class ChangeUsersName < ActiveRecord::Migration
  def change
    rename_column :users, :name, :first_name
    remove_column :users, :picture
    add_column :users, :picture, :text, :default => "default_prof_pic.png"

  end
end
