class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.text :entry1
      t.text :entry2
      t.text :entry3

      t.timestamps null: false
    end
  end
end
