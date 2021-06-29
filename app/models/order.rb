class Order < ActiveRecord::Base
  has_many :line_items
  validates_presence_of :name, :email, :address, :pay_type

  def self.pending_shipping
    find(:all, conditions: "shipped_at is null")
  end

end