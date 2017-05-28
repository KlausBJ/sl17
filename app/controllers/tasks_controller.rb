# Controller for tasks
class TasksController < ApplicationController
  let :admins, :all
  before_action :set_task, only: [:show, :edit, :update, :destroy, :toggle]

  # GET /tasks
  def index
    @tasks = Task.all
  end

  # GET /tasks/1
  def show; end

  def toggle
    respond_to do |format|
      format.js do
        person_id = task_params[:person_id]
        if task_params[:checked] == 'true'
          if @task.taken < @task.number || (@task.max && @task.taken < @task.max)
            Assignment.create(person_id: person_id, task_id: @task.id)
          end
        else
          assignment = Assignment.find_by(person_id: person_id, task_id: @task.id)
          assignment.delete if assignment
        end
        @person = Person.includes(:assignments).find(person_id)
        render layout: false
      end
    end
  end


  # GET /tasks/new
  def new
    @task = Task.new
  end

  # GET /tasks/1/edit
  def edit; end

  # POST /tasks
  def create
    @task = Task.new(task_params)

    respond_to do |format|
      if @task.save
        format.html do
          redirect_to @task, notice: 'Task was successfully created.'
        end
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /tasks/1
  def update
    respond_to do |format|
      if @task.update(task_params)
        format.html do
          redirect_to @task, notice: 'Task was successfully updated.'
        end
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /tasks/1
  def destroy
    @task.destroy
    respond_to do |format|
      format.html do
        redirect_to tasks_url, notice: 'Task was successfully destroyed.'
      end
    end
  end

  def import
    Task.import(params[:file])
    redirect_to root_url, notice: 'Deltagere importeret.'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_task
    #@task = Task.find(params[:id])
    @task = Task.find_by_sql("
  select  tasks.`*`,
          count(assignments.id) as taken
  from tasks
  left outer join assignments
    on tasks.id = assignments.task_id
  where tasks.id = #{params[:id]}
  group by tasks.id
  ")[0]
  end

  # Never trust parameters from the scary internet, only allow the white
  # list through.
  def task_params
    params.require(:task).permit(:name, :description, :activity_id, :person_id, :checked)
  end
end
