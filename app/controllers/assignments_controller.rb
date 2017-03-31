# Linking tasks to people
class AssignmentsController < ApplicationController
  let :admins, :all
  before_action :set_assignment, only: [:show, :edit, :update, :destroy]

  # GET /assignments
  # GET /assignments.json
  def index
    @assignments = Assignment.all
  end

  # GET /assignments/1
  # GET /assignments/1.json
  def show; end

  # GET /assignments/new
  def new
    @assignment = Assignment.new
  end

  # GET /assignments/1/edit
  def edit; end

  # POST /assignments
  def create
    @assignment = Assignment.new(assignment_params)

    respond_to do |format|
      if @assignment.save
        format.html { redirect_to @assignment, notice: 'Assignment created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /assignments/1
  def update
    respond_to do |format|
      if @assignment.update(assignment_params)
        format.html { redirect_to @assignment, notice: 'Assignment updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /assignments/1
  def destroy
    @assignment.destroy
    respond_to do |format|
      format.html do
        redirect_to assignments_url, notice: 'Assignment destroyed.'
      end
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_assignment
    @assignment = Assignment.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white
  # list through.
  def assignment_params
    params.require(:assignment).permit(:person_id, :task_id)
  end
end
