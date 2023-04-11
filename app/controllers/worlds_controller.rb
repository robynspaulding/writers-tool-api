class WorldsController < ApplicationController
  before_action :world, only: [:show, :update, :destroy]
  def index
    @worlds = World.all 
    render json: @worlds.as_json
  end

  def create
    @world = World.create(
      project_id: params[:project_id],
      name: params[:name],
      time_period: params[:time_period],
      physics: params[:physics],
      culture: params[:culture],
      misc1: params[:misc1],
      misc2: params[:misc2],
      misc3: params[:misc3],

    )
    render json: @world.as_json
  end

  def show
    render json: @world.as_json
  end

  def update
    @world.update(
      name: params[:name] || @world.name,
      time_period: params[:time_period] || @world.time_period,
      physics: params[:physics] || @world.physics,
      culture: params[:culture] || @world.culture,
      misc1: params[:misc1] || @world.misc1,
      misc2: params[:misc2] || @world.misc2,
      misc3: params[:misc3] || @world.misc3,
    )
    render json: @world.as_json
  end

  def destroy
    @world.destroy
    render json: {message: "World successfully destroyed"}
  end

  private
    def world
      @world ||= World.find_by!(id: params.require(:id))
    end
end
