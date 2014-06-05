class CreateLibraries < ActiveRecord::Migration
  def change
    create_table :libraries do |t|
      t.string :title
      t.string :description
      t.boolean :private, default: false
      t.timestamps
    end
  end
end
