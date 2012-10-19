class FamilyGroupsController < ApplicationController
  # GET /family_groups
  # GET /family_groups.json
  def index
    @family_groups = FamilyGroup.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @family_groups }
    end
  end

  # GET /family_groups/1
  # GET /family_groups/1.json
  def show
    @family_group = FamilyGroup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @family_group }
    end
  end

  # GET /family_groups/new
  # GET /family_groups/new.json
  def new
    @family_group = FamilyGroup.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @family_group }
    end
  end

  # GET /family_groups/1/edit
  def edit
    @family_group = FamilyGroup.find(params[:id])
  end

  # POST /family_groups
  # POST /family_groups.json
  def create
    @family_group = FamilyGroup.new(params[:family_group])

    respond_to do |format|
      if @family_group.save
        format.html { redirect_to @family_group, notice: 'Family group was successfully created.' }
        format.json { render json: @family_group, status: :created, location: @family_group }
      else
        format.html { render action: "new" }
        format.json { render json: @family_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /family_groups/1
  # PUT /family_groups/1.json
  def update
    @family_group = FamilyGroup.find(params[:id])

    respond_to do |format|
      if @family_group.update_attributes(params[:family_group])
        format.html { redirect_to @family_group, notice: 'Family group was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @family_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /family_groups/1
  # DELETE /family_groups/1.json
  def destroy
    @family_group = FamilyGroup.find(params[:id])
    @family_group.destroy

    respond_to do |format|
      format.html { redirect_to family_groups_url }
      format.json { head :no_content }
    end
  end
end
