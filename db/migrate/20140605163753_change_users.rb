class ChangeUsers < ActiveRecord::Migration
  def change
    add_column :users, :provider, :string
    add_column :users, :uid, :string
    add_column :users, :picture, :text, default: "../../assets/images/default_prof_pic.png"
    add_column :users, :name, :string
    add_column :users, :last_name, :string
    add_column :users, :bookmark_token, :string
  end
end
