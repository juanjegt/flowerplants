class ClientGroupsController < ApplicationController
  
  def index
    @clientGroups = ClientGroup.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @clientGroups }
    end
  end

  def list
    name = params[:id]
    @clientGroups = ClientGroup.WhereNameContains(name)
    render :template => 'client_groups/list' , :layout=>false
  end

  def show
    @group = ClientGroup.find(params[:id])
  end

  def new
    @group = ClientGroup.new
  end

  def edit
    @group = ClientGroup.find(params[:id])
  end

  def create
    @group = ClientGroup.new(params[:client_group])

    respond_to do |format|
      if @client.save
        format.html { redirect_to @group, notice: 'Group was successfully created.' }
        format.json { render json: @group, status: :created, location: @client }
      else
        format.html { render action: "new" }
        format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @group = ClientGroup.find(params[:id])

    respond_to do |format|
      if @group.update_attributes(params[:client_group])
        format.html { redirect_to @group, notice: 'Group was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end


end