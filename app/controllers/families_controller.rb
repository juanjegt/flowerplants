class FamiliesController < ApplicationController

  def show
    @family = Family.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @family }
    end
  end

  def new
    @family = Family.new
  end

  def edit
    @family = Family.find(params[:id])
  end

  def create
    @family = Family.new(params[:family])

    if @family.save
      redirect_to @family, notice: 'Family was successfully created.'
    else
      render action: "new"
    end
  end
  
  def update
    @family = Family.find(params[:id])

    if @family.update_attributes(params[:family])
      redirect_to @family, notice: 'Family was successfully updated.'
    else
      render action: "edit" 
    end
  end
end
