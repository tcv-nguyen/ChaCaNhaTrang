class Post < ActiveRecord::Base
  attr_accessible :description, :image, :price, :title, :recipe
  default_scope :order => 'title'
  has_many :line_items

  before_destroy :ensure_not_referenced_by_any_line_item
  def ensure_not_referenced_by_any_line_item
  	if line_items.count.zero?
  		return true
  	else
  		errors.add(:base, 'Line Items present')
  		return fasle
  	end
  end
end
