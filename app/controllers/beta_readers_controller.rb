class BetaReadersController < ApplicationController
  before_action :beta_reader, only: [:show, :update, :destroy]
  def index
    @beta_readers = BetaReader.all 
    render json: @beta_readers.as_json
  end

  def create
    @beta_reader = BetaReader.create(
      user_id: params[:user_id],
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      feedback_notes: params[:feedback_notes],
    )
    render json: @beta_reader.as_json
  end

  def show
    render json: @beta_reader.as_json
  end

  def update
    @beta_reader.update(

      first_name: params[:first_name] || @beta_reader.first_name,
      last_name: params[:last_name] || @beta_reader.last_name,
      email: params[:email] || @beta_reader.email,
      feedback_notes: params[:feedback_notes] || @beta_reader.feedback_notes,
    )
    render json: @beta_reader.as_json
  end

  def destroy
    @beta_reader.destroy
    render json: {message: "beta_reader successfully destroyed"}
  end

  private
    def beta_reader
      @beta_reader ||= BetaReader.find_by!(id: params.require(:id))
    end
end
