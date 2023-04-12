class NotesController < ApplicationController
  before_action :note, only: [:show, :update, :destroy]
  def index
    @notes = Note.all 
    render json: @notes.as_json
  end

  def create
    @note = Note.create(
      project_id: params[:project_id],
      note_title: params[:note_title],
      chapter_title: params[:chapter_title],
      note: params[:note],
      source_url: params[:source_url],
    )
    render json: @note.as_json
  end

  def show
    render json: @note.as_json
  end

  def update
    @note.update(
      note_title: params[:note_title] || @note.note_title,
      chapter_title: params[:chapter_title] || @note.chapter_title,
      note: params[:note] || @note.note,
      source_url: params[:source_url] || @note.source_url,
    )
    render json: @note.as_json
  end

  def destroy
    @note.destroy
    render json: {message: "Note successfully destroyed"}
  end

  private
    def note
      @note ||= Note.find_by!(id: params.require(:id))
    end
end

