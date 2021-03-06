# Controller for tickets
class TicketsController < ApplicationController
  let :admins, :all
  before_action :set_ticket, only: [:show, :edit, :update, :destroy]

  # GET /tickets
  def index
    @tickets = Ticket.all
  end

  # GET /tickets/1
  def show; end

  # GET /tickets/new
  def new
    @ticket = Ticket.new
  end

  # GET /tickets/1/edit
  def edit; end

  # POST /tickets
  def create
    @ticket = Ticket.new(ticket_params)

    respond_to do |format|
      if @ticket.save
        format.html do
          redirect_to @ticket, notice: 'Ticket was successfully created.'
        end
      else
        format.html { render :new }
      end
    end
  end

  def create_or_destroy
    @ticket = Ticket.where(
      'person_id = ? AND activity_id = ?',
      ticket_params[:person_id],
      ticket_params[:activity_id]
    )

    if @ticket
      @ticket.destroy
    else
      @ticket = Ticket.new(ticket_params)
      @ticket.save
    end
  end

  # PATCH/PUT /tickets/1
  def update
    respond_to do |format|
      if @ticket.update(ticket_params)
        format.html do
          redirect_to @ticket, notice: 'Ticket was successfully updated.'
        end
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /tickets/1
  def destroy
    @ticket.destroy
    respond_to do |format|
      format.html do
        redirect_to tickets_url, notice: 'Ticket was successfully destroyed.'
      end
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_ticket
    @ticket = Ticket.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white
  # list through.
  def ticket_params
    params.require(:ticket).permit(:person_id, :activity_id)
  end
end
