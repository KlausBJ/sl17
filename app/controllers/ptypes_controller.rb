class PtypesController < ApplicationController
  let :admins, :all
  before_action :set_ptype, only: [:show, :edit, :update, :destroy]
  
  # GET /ptypes
  # GET /ptypes.json
  def index
    @ptypes = Ptype.all
  end

  # GET /ptypes/1
  # GET /ptypes/1.json
  def show
  end

  # GET /ptypes/new
  def new
    @ptype = Ptype.new
  end

  # GET /ptypes/1/edit
  def edit
  end

  # POST /ptypes
  # POST /ptypes.json
  def create
    @ptype = Ptype.new(ptype_params)

    respond_to do |format|
      if @ptype.save
        format.html { redirect_to action: "index", notice: 'Billettype oprettet.' }
        format.json { render :show, status: :created, location: @ptype }
      else
        format.html { render :new }
        format.json { render json: @ptype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ptypes/1
  # PATCH/PUT /ptypes/1.json
  def update
    respond_to do |format|
      if @ptype.update(ptype_params)
        format.html { redirect_to action: "index", notice: 'Billettype opdateret.' }
        format.json { render :show, status: :ok, location: @ptype }
      else
        format.html { render :edit }
        format.json { render json: @ptype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ptypes/1
  # DELETE /ptypes/1.json
  def destroy
    @ptype.destroy
    respond_to do |format|
      format.html { redirect_to ptypes_url, notice: 'Ptype was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ptype
      @ptype = Ptype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ptype_params
      params.require(:ptype).permit(:name, :price, :datereq)
    end
end
