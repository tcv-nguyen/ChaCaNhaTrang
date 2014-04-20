class LineItem < ActiveRecord::Base
  attr_accessible :cart_id, :post_id
  belongs_to :cart 
  belongs_to :post

  def total_price
  	post.price * quantity
  end
end
