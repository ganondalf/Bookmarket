class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.text :body
      t.integer :user_id
      t.integer :link_id
      t.timestamps
    end
  end
end
