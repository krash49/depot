class StoreController < ApplicationController
  skip_before_action :authoraize
  include CurrentCart
  before_action :set_cart
  def index
    @products = Product.order(:title)

  end
end
