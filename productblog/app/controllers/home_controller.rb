class HomeController < ApplicationController
  def index
  		@users = User.all
  		@orders = Order.all
  end
end
