class HomeController < ApplicationController
  def index
  		@users = User.all
  		@orders = Order.all

  	   #@product = Product.new(product_params)

  end
end
