class Product < ApplicationRecord
  validates_presence_of :title, :description, :image_url
  validates_numericality_of :price
  validates_uniqueness_of :title
  
  def self.salable_items
    find.all(date_available.now,order: "date_available desc")
  end
  
  protected
  def validate
      errors.add(:price, "should be positive") unless price.nil? || price >= 0.01
  end  
  
end
