# Controller for people
class PeopleController < ApplicationController
  let :admins, :all
  let :guests, [:index]
  let :members, [:new, :create, :edit, :update, :destroy]

  before_action :set_person, only: [:show, :edit, :update, :destroy]

  # GET /people
  # GET /people.json
  def index
    @people = Person.paid.order(:member_id)
  end

  # GET /people/1
  # GET /people/1.json
  def show; end

  # GET /people/1/edit
  def edit; end

  # POST /people
  # POST /people.json
  def create
    @person = Person.new(person_params)
    if @person.ptype.datereq && ((@person.ptype_id == 4 && @person.aargang < Date.new(2013, 7, 8)) || (@person.ptype_id == 3 && @person.aargang > Date.new(2013, 7, 15)))
      flash.now[:notice] = 'Fødselsdagen passer ikke med billettypen.'
      render template: 'members/show'
    elsif @person.ptype_id == 1 || (@person.member.people.any? && @person.member.people.where(ptype_id: 1).where('id <> ?', @person.id || 0).any?) || (@person.host_member && Member.find_by_number(@person.host_member) && Member.find_by_number(@person.host_member).people.where(ptype_id: 1).any?)
      if @person.ptype == 1 || @person.member.number == @person.host_member
        @person.host_member = nil
      end
      # move housing to member if not already set there
      if @person.member.housing_type_id.nil? && @person.member.housing_number.nil? && (@person.housing_number || @person.housing_type_id)
        @person.member.housing_type_id = @person.housing_type_id
        @person.member.housing_number = @person.housing_number
        @person.housing_type_id = nil
        @person.housing_number = nil
        @person.member.save
      elsif @person.member.housing_type_id == @person.housing_type_id && @person.member.housing_number == @person.housing_number
        # don't save housing if it matches the member housing (redundant)
        @person.housing_type_id = nil
        @person.housing_number = nil
      end

      @person.aargang = nil unless @person.ptype.datereq

      @person.invoice = @person.member.invoices.where(paid: false).last
      @person.invoice ||= Invoice.create(member: @person.member, paid: false)
      respond_to do |format|
        if @person.save
          format.html { redirect_to @person.member, notice: 'Deltager tilføjet.' }
          format.json { render :show, status: :created, location: @person }
        else
          format.html { render :new }
          format.json { render json: @person.errors, status: :unprocessable_entity }
        end
      else
        flash.now[:notice] = 'Tilmeld voksne først, eller udfyld feltet Værtsfamilie med et andet medlemsnr., som har voksne tilmeldt.'
        render template: 'members/show'
      end
    end
  end

  # PATCH/PUT /people/1
  # PATCH/PUT /people/1.json
  def update
    # ptid = ptype_id fra formular, @person.ptype.id eller @person.ptype_id
    # er den 'gamle' værdi
    ptid = person_params[:ptype_id].to_i

    # bdate er en dato konstrueret ud fra data fra formularen, altså den
    # 'nye' (fordi den ikke findes som en helhed i person_params)
    bdate = Date.new(person_params['aargang(1i)'].to_i, person_params['aargang(2i)'].to_i, person_params['aargang(3i)'].to_i) if Ptype.find(ptid).datereq

    if Ptype.find(ptid).datereq && ((ptid == 4 && bdate < Date.new(2013, 7, 8)) || (ptid == 3 && bdate > Date.new(2013, 7, 15)))
      flash.now[:notice] = 'Fødselsdagen passer ikke med billettypen.'
      render :edit
    elsif ptid != 1 && @person.member.people.where(ptype_id: 1).where('id <> ?', @person.id).none? && @person.member.people.where('ptype_id <> 1').where('host_member IS NULL').any?
      flash.now[:notice] = 'Den eneste tilmeldte voksen kan ikke konverteres til en anden billettype, så længe der er ikke-voksne uden værtsfamilie.'
      render :edit
    else
      pphm = person_params[:host_member]
      if ptid == 1 || (@person.member.people.any? && @person.member.people.where(ptype_id: 1).where('id <> ?', @person.id).any?) || (pphm && Member.find_by_number(pphm) && Member.find_by_number(pphm).people.where(ptype_id: 1).any?)
        respond_to do |format|
          @person.aargang = nil unless @person.ptype.datereq

          if @person.update(person_params)
            if @person.ptype_id == 1 || @person.member.number == @person.host_member
              @person.host_member = nil
              @person.save
            end
            if @person.member.housing_type_id.nil? && @person.member.housing_number.nil? && (@person.housing_number || @person.housing_type_id)
              @person.member.housing_type_id = @person.housing_type_id
              @person.member.housing_number = @person.housing_number
              @person.housing_type_id = nil
              @person.housing_number = nil
              @person.member.save
              @person.save
            elsif @person.member.housing_type_id == @person.housing_type_id && @person.member.housing_number == @person.housing_number
              # don't save housing if it matches the member housing (redundant)
              @person.housing_type_id = nil
              @person.housing_number = nil
              @person.save
            end

            format.html { redirect_to @person.member, notice: 'Deltager opdateret.' }
            format.json { render :show, status: :ok, location: @person }
          else
            format.html { render :edit }
            format.json { render json: @person.errors, status: :unprocessable_entity }
          end
        end
      end
    end
  end

  # DELETE /people/1
  # DELETE /people/1.json
  def destroy
    @member = @person.member
    @person.destroy
    respond_to do |format|
      format.html { redirect_to member_path(@member), notice: 'Deltageren er slettet.' }
      format.json { head :no_content }
    end
  end

  def import
    Person.import(params[:file])
    redirect_to root_url, notice: 'Deltagere importeret.'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_person
    @person = Person.find(params[:id])
    @member = @person.member
  end

  # Never trust parameters from the scary internet, only allow the white
  # list through.
  def person_params
    params.require(:person).permit(:name, :member_id, :ptype_id, :aargang, :koen, :housing_type_id, :housing_number, :phone, :host_member, :invoice_id, :activity)
  end
end
