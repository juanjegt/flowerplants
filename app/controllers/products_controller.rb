class ProductsController < ApplicationController

  def index
  end

  def list
    name = params[:id]
    @products = Product.WhereNameContains(name)
    render :template => 'products/list' , :layout=>false
  end

  def show
    product = Product.find(params[:id])
    if !(product.variety == nil)
      redirect_to product.variety
    else
      if !(product.color == nil)
        redirect_to product.color
      else
        redirect_to product.family
      end
    end
  end

end