class Cart < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :line_items, :dependent => :destroy

  def add_product(post_id)
  	current_item = line_items.where(:post_id => post_id).first
    #current_item = line_items.find_by_post_id(post_id)
  	if current_item
  		current_item.quantity += 1
  	else
  		current_item = line_items.build(:post_id => post_id)
  	end
  	current_item
  end

  def total_price
    line_items.to_a.sum{|item| item.total_price}
  end
end
