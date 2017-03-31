# Controller for Ptypes, used to determine age and eligibility for activities
class PtypesController < ApplicationController
  let :admins, :all
  before_action :set_ptype, only: [:show, :edit, :update, :destroy]

  # GET /ptypes
  def index
    @ptypes = Ptype.all
  end

  # GET /ptypes/1
  def show; end

  # GET /ptypes/new
  def new
    @ptype = Ptype.new
  end

  # GET /ptypes/1/edit
  def edit; end

  # POST /ptypes
  def create
    @ptype = Ptype.new(ptype_params)

    respond_to do |format|
      if @ptype.save
        format.html do
          redirect_to action: 'index', notice: 'Billettype oprettet.'
        end
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /ptypes/1
  def update
    respond_to do |format|
      if @ptype.update(ptype_params)
        format.html do
          redirect_to action: 'index', notice: 'Billettype opdateret.'
        end
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /ptypes/1
  def destroy
    @ptype.destroy
    respond_to do |format|
      format.html { redirect_to ptypes_url, notice: 'Ptype destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_ptype
    @ptype = Ptype.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white
  # list through.
  def ptype_params
    params.require(:ptype).permit(:name, :price, :datereq)
  end
end
