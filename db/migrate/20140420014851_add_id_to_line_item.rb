class AddIdToLineItem < ActiveRecord::Migration
  def change
    add_column :line_items, :id, :primary_key
  end
end
