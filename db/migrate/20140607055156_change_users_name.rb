class ChangeUsersName < ActiveRecord::Migration
  def change
    rename_column :users, :name, :first_name
    remove_column :users, :picture
    add_column :users, :picture, :text, :default => "http://imprs-gw.aei.mpg.de/people/04_phd-students/profile0.jpg"

  end
end
