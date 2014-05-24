class Product < ActiveRecord::Base
  default_scope :order => 'code'

  has_many :line_items
  belongs_to :categories

  before_destroy :ensure_not_referenced_by_any_line_item
  def ensure_not_referenced_by_any_line_item
  	if line_items.count.zero?
       return true
    else
       errors.add(:base, 'Line Items present' )
    return false
    end
  end

  attr_accessible :category_id, :code, :color, :fabric, :image_big, :image_thumb, :price

  validates_presence_of :category_id, :code, :color, :fabric, :image_big, :image_thumb, :price


end
