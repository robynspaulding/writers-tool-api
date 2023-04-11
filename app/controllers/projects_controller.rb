class ProjectsController < ApplicationController

  before_action :project, only: [:show, :update, :destroy]
  def index
    @projects = Project.all 
    render json: @projects.as_json
  end

  def create
    @project = Project.create(
      working_title: params[:working_title],
      status: params[:status],
    )
    render json: @project.as_json
  end

  def show
    render json: @project.as_json
  end

  def update
    @project.update(
      working_title: params[:working_title] || @project.working_title,
      status: params[:status] || @project.status,
    )
    render json: @project.as_json
  end

  def destroy
    @project.destroy
    render json: {message: "Project successfully destroyed"}
  end

  private
    def project
      @project ||= Project.find_by!(id: params.require(:id))
    end
end
