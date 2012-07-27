class CreateMemos < ActiveRecord::Migration
  def change
    create_table :memos do |t|
      t.text :text
      t.integer :music_id

      t.timestamps
    end
  end
end
