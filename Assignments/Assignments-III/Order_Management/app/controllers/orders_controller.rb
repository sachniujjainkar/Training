class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]
  require './app/pdfs/order_invice_pdf'

  # GET /orders
  # GET /orders.json
  def index
    @orders = Order.all
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
    respond_to do |format|
        format.html
        format.pdf do
          pdf = OrderInvicePdf.new(@order)
          send_data pdf.render, filename: 'OrderInvice.pdf', type: "application/pdf", disposition: "inline"    
        end
      end
  end

  # GET /orders/new
  def new
    @products = Product.all
    @order = Order.new
  end

  # GET /orders/1/edit
  def edit
     @products = Product.all
  end

  # POST /orders
  # POST /orders.json
  def create
    @order = Order.new(order_params)
    respond_to do |format|
      if @order.save
        format.html { redirect_to @order, notice: 'Order was successfully created.' }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to @order, notice: 'Order was successfully updated.' }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: 'Order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
      raise ActionController::RoutingError.new('Not Found') if @order.blank?
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:order_no, :is_express_delivery, :is_custommer_Pickup, :delivery_date, :order_currency, :order_currency, :special_instruction, :user_id, :address_id, :order_price, line_items_attributes: [:quantity, :price, :product_id, :_destroy])
    end
end
