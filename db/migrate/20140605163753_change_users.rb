class ChangeUsers < ActiveRecord::Migration
  def change
    add_column :users, :provider, :string
    add_column :users, :uid, :string
    add_column :users, :picture, :text
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :bookmark_token, :string
  end
end
