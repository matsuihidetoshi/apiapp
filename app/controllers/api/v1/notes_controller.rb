class Api::V1::NotesController < ApplicationController
  def index
    notes = Note.all
    render json: { message: 'Loaded notes', data: notes }
  end

  private

  def note_params
    params.require(:note).permit(:title, :content, :user)
  end
end
