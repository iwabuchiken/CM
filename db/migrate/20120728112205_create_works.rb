class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.string :serial_num
      t.integer :music_id

      t.timestamps
    end
  end
end
