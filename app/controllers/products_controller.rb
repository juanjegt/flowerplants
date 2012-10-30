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
    if !product.Variety.nil?
      redirect_to product.Variety
    else
      if !product.Color.nil?
        redirect_to product.Color
      else
        redirect_to product.Family
      end
    end
  end

end