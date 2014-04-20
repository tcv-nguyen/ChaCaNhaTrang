class RemoveIdLineItems < ActiveRecord::Migration
  def up
  	remove_column :line_items, :id
  end

  def down
  end
end
