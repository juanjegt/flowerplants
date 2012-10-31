class ColorsController < ApplicationController

  def show
    @color = Color.find(params[:id])
  end

  def new
    family = Family.find(params[:id])
    @color = Color.new
    @color.family = family
  end

  def create
    @color = Color.new(params[:color])
    family = Family.find(params[:family_id])
    @color.family = family
    if CreatesColor.create(@color)
      redirect_to @color, notice: 'Color was successfully created.'
    else
      render action: "new"
    end
  end
end