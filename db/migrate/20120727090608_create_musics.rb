class CreateMusics < ActiveRecord::Migration
  def change
    create_table :musics do |t|
      t.string :file_name
      t.string :file_path
      t.integer :duration
      t.integer :date_added
      t.integer :date_modified
      t.text :file_info
      t.text :memo_self
      t.string :located_at

      t.timestamps
    end
  end
end
