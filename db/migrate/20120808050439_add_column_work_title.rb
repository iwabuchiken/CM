class AddColumnWorkTitle < ActiveRecord::Migration
  def up
    
    add_column :works, :title, :string
    
  end

  def down
    
    remove_column :works, :title
    
  end
end
