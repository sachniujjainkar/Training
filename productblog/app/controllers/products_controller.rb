class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
# 

  # GET /products
  # GET /products.json
  def index
    @products = Product.all
    
  end

  # GET /products/1
  # GET /products/1.json
  # GET /addresses/1.json
  def show
          #@product = Product.find(params[:id])
          @product = Product.find(params[:id])
    ap 'log'
    respond_to do |format|
        format.json { render json: @product}   
        format.html #{redirect_to @product}
    end
    return
  end

  def create
    render text: params
  end

  def get_product
    @product = Product.search(params[:search]).first  if params[:search].present?

    respond_to do |format|
      if request.xhr?
        format.json { render json: @product }
      end
    end
  end

#   def product_details
#  @product = Product.find_by_sku(params[:sku])
#   respond_to do |format|
# format.html # show.html.erb
# format.json { render json: @product }
# end
# end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:sku, :name, :quantity, :length, :width, :height, :weight, :price, :category_id, :image)
    end
end
