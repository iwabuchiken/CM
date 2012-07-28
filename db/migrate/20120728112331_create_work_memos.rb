class CreateWorkMemos < ActiveRecord::Migration
  def change
    create_table :work_memos do |t|
      t.string :text
      t.integer :work_id

      t.timestamps
    end
  end
end
