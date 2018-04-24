# frozen_string_literal: true

class TasksController < ApplicationController
  before_action :set_task, only: %i[show edit update destroy]

  # GET /tasks
  # GET /tasks.json
  def index
    @tasks = Task.all
    @tasks.group(:expected_completion_date)
  end

  # GET /tasks/1
  # GET /tasks/1.json
  def show;
  end

  # GET /tasks/new
  def new
    @task = Task.new
  end

  # GET /tasks/1/edit
  def edit; end

  # POST /tasks
  # POST /tasks.json
  def create
    @task = Task.new(task_params)
    @task.project_id = params[:project_id]
    @completion_date = Task.group(:expected_completion_date).count

    respond_to do |format|
      if @task.save
        format.html { redirect_to tenant_project_path(tenant_id: Tenant.current_tenant_id, id: @task.project_id), notice: 'Task was successfully created.' }
        format.json { render :show, status: :created, location: @task }
      else
        format.html { render :new }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tasks/1
  # PATCH/PUT /tasks/1.json
  def update
    respond_to do |format|
      if @task.update(task_params)
        format.html { redirect_to tenant_project_path(tenant_id: Tenant.current_tenant_id, id: @task.project_id), notice: 'Task was successfully updated.' }
        format.json { render :show, status: :ok, location: @task }
      else
        format.html { render :edit }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tasks/1
  # DELETE /tasks/1.json
  def destroy
    @task.destroy
    respond_to do |format|
      format.html { redirect_to tenant_project_path(tenant_id: Tenant.current_tenant_id, id: @task.project_id), notice: 'Task was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  private

  
  # Use callbacks to share common setup or constraints between actions.
  def set_task
    @task = Task.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def task_params
    params.require(:task).permit(:title, :description, :expected_completion_date, :completed, :assigned_to, :project_id)
  end
end
