class ChangeLinksColumn < ActiveRecord::Migration
  def change
    add_column :links, :websource, :string
  end
end
