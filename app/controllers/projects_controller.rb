class ProjectsController < ApplicationController

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
    @project = Project.find_by(id: params[:id])
    render json: @project.as_json
  end

  def update
    @project = Project.find_by(id: params[:id])
    @project.update(
      working_title: params[:working_title] || @project.working_title,
      status: params[:status] || @project.status,
    )
    render json: @project.as_json
  end

  def destroy
    @project = Project.find_by(id: params[:id])
    @project.destroy
    render json: {message: "Project successfully destroyed"}
  end
end
