class ProductsController < ApplicationController

  def new
    @show = Product.all
    @product = Product.new
    @category = Category.order('id ASC').limit(2)
  end

##ここからajax通信用
  def category_children
    @category_children = Category.find(params[:productcategory]).children 
  end

  def category_grandchildren
    @category_grandchildren = Category.find(params[:productcategory]).children
  end
##ここまでajax通信用

  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to controller: :products, action: :new
    else
      redirect_to controller: :products, action: :new
    end

  end

  def edit
    @product = Product.find(params[:id])
    @category = Category.order('id ASC').limit(2)
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to controller: :products, action: :new
    else
      redirect_to controller: :products, action: :new
    end

  end

  private

  def product_params
    params.require(:product).permit(:name, :category_id)
  end
  
end
