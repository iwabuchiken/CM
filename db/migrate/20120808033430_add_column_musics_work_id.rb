class AddColumnMusicsWorkId < ActiveRecord::Migration
  def up
    
    add_column :musics, :work_id, :integer
    
  end

  def down
    
    remove_column :musics, :work_id
    
  end
end
