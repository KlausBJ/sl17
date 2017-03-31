# Controller for HousingTypes - predefined categories
class HousingTypesController < ApplicationController
  let :admins, :all
  before_action :set_housing_type, only: [:show, :edit, :update, :destroy]

  # GET /housing_types
  def index
    @housing_types = HousingType.all
  end

  # GET /housing_types/1
  def show; end

  # GET /housing_types/new
  def new
    @housing_type = HousingType.new
  end

  # GET /housing_types/1/edit
  def edit; end

  # POST /housing_types
  def create
    @housing_type = HousingType.new(housing_type_params)

    respond_to do |format|
      if @housing_type.save
        format.html do
          redirect_to @housing_type, notice: 'Housing type created.'
        end
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /housing_types/1
  def update
    respond_to do |format|
      if @housing_type.update(housing_type_params)
        format.html do
          redirect_to @housing_type, notice: 'Housing type updated.'
        end
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /housing_types/1
  def destroy
    @housing_type.destroy
    respond_to do |format|
      format.html do
        redirect_to housing_types_url, notice: 'Housing type destroyed.'
      end
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_housing_type
    @housing_type = HousingType.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white
  # list through.
  def housing_type_params
    params.require(:housing_type).permit(:name)
  end
end
