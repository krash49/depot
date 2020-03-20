class LineItem < ApplicationRecord
  belongs_to :order, optional: true
  belongs_to :product, optional: true
  belongs_to :cart
  def total_price
    product.price * quantity

  end

  validates :quantity, numericality: {greater_than_or_equal_to: 1,
            message: "Minimum quantity = 1"}

end
