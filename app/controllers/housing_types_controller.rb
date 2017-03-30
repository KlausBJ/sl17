class HousingTypesController < ApplicationController
  let :admins, :all
  before_action :set_housing_type, only: [:show, :edit, :update, :destroy]

  # GET /housing_types
  # GET /housing_types.json
  def index
    @housing_types = HousingType.all
  end

  # GET /housing_types/1
  # GET /housing_types/1.json
  def show end

  # GET /housing_types/new
  def new
    @housing_type = HousingType.new
  end

  # GET /housing_types/1/edit
  def edit end

  # POST /housing_types
  # POST /housing_types.json
  def create
    @housing_type = HousingType.new(housing_type_params)

    respond_to do |format|
      if @housing_type.save
        format.html { redirect_to @housing_type, notice: 'Housing type was successfully created.' }
        format.json { render :show, status: :created, location: @housing_type }
      else
        format.html { render :new }
        format.json { render json: @housing_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /housing_types/1
  # PATCH/PUT /housing_types/1.json
  def update
    respond_to do |format|
      if @housing_type.update(housing_type_params)
        format.html { redirect_to @housing_type, notice: 'Housing type was successfully updated.' }
        format.json { render :show, status: :ok, location: @housing_type }
      else
        format.html { render :edit }
        format.json { render json: @housing_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /housing_types/1
  # DELETE /housing_types/1.json
  def destroy
    @housing_type.destroy
    respond_to do |format|
      format.html { redirect_to housing_types_url, notice: 'Housing type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_housing_type
      @housing_type = HousingType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def housing_type_params
      params.require(:housing_type).permit(:name)
    end
end
