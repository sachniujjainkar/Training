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

      format.html # show.html.erb
      format.json { render json: @order }

      format.pdf do
        pdf = OrderPdf.new(@order)
        #pdf.text 'Hello World'

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
          @users = User.all
          @lineitem = @order.lineitems
    

   
    
  end

  # GET /orders/1/edit
  def edit
  end

  # POST /orders
  # POST /orders.json
  def create
    @order = Order.new(order_params)

    respond_to do |format|
      if @order.save
                 @order.address.update_attributes(:user_id => @order.user_id)

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
      params.require(:order).permit(:order_no, :tracking_no, :is_express_delivery, :is_customer_pickup, :dilivery_date, :order_currency, :special_instruction, :order_value, :user_id, :address_id, lineitems_attributes: [:name, :sku, :description, :quantity, :price, :product_id, :_destroy])
    end
end
