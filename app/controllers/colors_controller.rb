class ColorsController < ApplicationController

  def show
    @color = Color.find(params[:id])
  end

  def new
    family = Family.find(params[:id])
    @color = Color.new
    @color.Family = family
  end

  def edit
    @color = Color.find(params[:id])
  end

  def create
    @color = Color.new(params[:color])
    family = Family.find(params[:family_id])
    @color.Family = family
    if @color.save
      redirect_to @color, notice: 'Color was successfully created.'
    else
      render action: "new"
    end
  end
  
  def update
    @color = Color.find(params[:id])

    if @color.update_attributes(params[:color])
      redirect_to @color, notice: 'Color was successfully updated.'
    else
      render action: "edit" 
    end
  end
end