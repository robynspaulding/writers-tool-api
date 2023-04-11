class CharactersController < ApplicationController
  before_action :character, only: [:show, :update, :destroy]
  def index
    @characters = Character.all 
    render json: @characters.as_json
  end

  def create
    @character = Character.create(
      project_id: params[:project_id],
      name: params[:name],
      birthday: params[:birthday],
      age: params[:age],
      physical_attributes: params[:physical_attributes],
      likes: params[:likes],
      dislikes: params[:dislikes],
      hobbies: params[:hobbies],
      favorite_food: params[:favorite_food],
      misc1: params[:misc1],
      misc2: params[:misc2],
      misc3: params[:misc3],

    )
    render json: @character.as_json
  end

  def show
    render json: @character.as_json
  end

  def update
    @character.update(
      name: params[:name] || @character.name,
      birthday: params[:birthday] || @character.birthday,
      age: params[:age] || @character.age,
      physical_attributes: params[:physical_attributes] || @character.physical_attributes,
      likes: params[:likes] || @character.likes,
      dislikes: params[:dislikes] || @character.dislikes,
      hobbies: params[:hobbies] || @character.hobbies,
      favorite_food: params[:favorite_food] || @character.favorite_food,
      misc1: params[:misc1] || @character.misc1,
      misc2: params[:misc2] || @character.misc2,
      misc3: params[:misc3] || @character.misc3,
    )
    render json: @character.as_json
  end

  def destroy
    @character.destroy
    render json: {message: "Character successfully destroyed"}
  end

  private
    def character
      @character ||= Character.find_by!(id: params.require(:id))
    end
end
