class VarietiesController < ApplicationController

  def show
    @variety = Variety.find(params[:id])
  end

  def new
    color = Color.find(params[:id])
    @variety = Variety.new
    @variety.family = color.family
    @variety.color = color
  end

  def create
    @variety = Variety.new(params[:variety])
    color = Color.find(params[:color_id])
    @variety.family = color.family
    @variety.color = color
    if CreatesVariety.create(@variety)
      redirect_to @variety, notice: 'Variety was successfully created.'
    else
      render action: "new"
    end
  end

end