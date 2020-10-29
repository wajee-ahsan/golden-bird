class ProductsController < ApplicationController
  before_action :find_product, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index , :show] 
  def index
    @products = Product.all.order('created_at DESC')
    #@message = Notification.new()
    puts '--------------------'
    #puts @message.send_message()
    puts '--------------------'
  end

  def new
    @product = current_user.products.build
  end

  def create
    @product = current_user.products.build(product_params)
    if @product.save
      redirect_to @product
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end
  
  def update
    if @product.update(product_params)
      redirect_to @product
    else
      render 'edit'
    end
  end

  def destroy
    if @product.destroy
      redirect_to root_path
    else
      redirect_to @product
    end
  end

  private

  def find_product
    @product = Product.find(params[:id])
  end
  
  def product_params
    params.require(:product).permit(:name, :description, :price, :avatar)
  end
end
