# frozen_string_literal: true

class ProjectsController < ApplicationController
  before_action :set_project, only: %i[show edit update destroy users add_user]
  before_action :set_tenant, only: %i[show edit update destroy new create users add_user]
  before_action :verify_tenant
  before_action :check_future, only: %i[edit update new create]
  # GET /projects
  # GET /projects.json
  def index
    @projects = Project.by_user_plan_and_tenant(params[:tenant_id], current_user)
  end

  # GET /projects/1
  # GET /projects/1.json
  def show; end

  # GET /projects/new
  def new
    @project = Project.new
  end

  # GET /projects/1/edit
  def edit
    # check_future
  end

  # POST /projects
  # POST /projects.json
  def create
    @project = Project.new(project_params)
    # check_future
    @project.users << current_user
    respond_to do |format|
      if @project.save
        format.html { redirect_to root_url, notice: 'Project was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
    # check_future
    respond_to do |format|
      if @project.update(project_params)
        format.html { redirect_to root_url, notice: 'Project was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to root_url, notice: 'Project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def users
    @project_users = (@project.users + User.where(tenant_id: @tenant.id, is_admin: true)) - [current_user]
    @other_users = @tenant.users.where(is_admin: false) - (@project_users + [current_user])
  end

  def add_user
    @project_user = UserProject.new(user_id: params[:user_id], project_id: @project.id)

    respond_to do |format|
      if @project_user.save
        format.html do
          redirect_to users_tenant_project_url(id: @project.id, tenant_id: @project.tenant_id),
                      notice: 'User was successfully added to project'
        end
      else
        format.html do
          redirect_to users_tenant_project_url(id: @project.id, tenant_id: @project.tenant_id),
                      error: 'User was not added to project'
        end
      end
    end
  end

  private

  def check_future
    # if @project.expected_completion_date.to_date.future? == false
    #   redirect_to users_tenant_project_url(id: @project.id, tenant_id: @project.tenant_id),
    #               error: 'User was not added to project'
    # end
  end
  # Use callbacks to share common setup or constraints between actions.
  def set_project
    @project = Project.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def project_params
    params.require(:project).permit(:title, :details, :expected_completion_date, :tenant_id)
  end

  def set_tenant
    @tenant = Tenant.find(params[:tenant_id])
  end

  def verify_tenant
    unless params[:tenant_id] == Tenant.current_tenant_id.to_s
      redirect_to :root,
                  flash: { error: 'You are not authorized to access any organization other than your own' }
    end
  end
end
