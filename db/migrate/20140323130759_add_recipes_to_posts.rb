class AddRecipesToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :recipe, :text
  end
end
