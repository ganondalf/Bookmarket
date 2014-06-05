class CreateLibrariesUsers < ActiveRecord::Migration
  def change
    create_table :libraries_users, id: false do |t|
      t.integer :user_id
      t.integer :library_id
    end
  end
end
