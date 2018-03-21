class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]

  # GET /orders
  # GET /orders.json
  def index
    @orders = Order.all

  end

  # GET /orders/1
  # GET /orders/1.json
  def show
    @order = Order.find(params[:id])
      respond_to do |format|
        format.html
        format.pdf do
    pdf = OrderPdf.new(@order)
    send_data pdf.render,
              filename: "order_#{@order.order_no}",
              type: 'application/pdf',
              disposition: 'inline'
  end
    end
      end




  # GET /orders/new
  def new
    @order = Order.new
    @line_items = @order.line_items
    # @products = Products.all
    # # render '/products'
    # render :template => 'products', :formats => [:html]
  end

  # GET /orders/1/editrender :template => 'products', :formats => [:html]
  def edit
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
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:order_no, :is_express_delivery, :is_customer_pickup_boolean, :delivery_date, :order_currency, :order_value, :tracking_no, :special_instruction, :user_id, :address_id, line_items_attributes: [:id, :_destroy,:sku, :quantity, :price, :product_id])
    end
end
