class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string   :title
      t.string   :url
      t.text     :picture
      t.integer  :library_id
      t.timestamps
    end
  end
end
