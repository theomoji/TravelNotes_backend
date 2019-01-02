class Api::V1::NotesController < ApplicationController
    before_action :find_note, only: [:update]
    def index
      @notes = Note.all
      render json: @notes
    end

    def show 
      @note = Note.find(params[:id])
      render json: @note, status: :accepted
    end 
  
    def update
      @note.update(note_params)
      if @note.save
        render json: @note, status: :accepted
      else
        render json: { errors: @note.errors.full_messages }, status: :unprocessible_entity
      end
    end

    def create  
      # byebug
      @note = Note.create(note_params)
      if @note.save 
        render json: @note, status: :accepted
      else 
        render json: {errors: @note.errors.full_messages}, status: :unprocessible_entity
      end 
    end 

    def destroy
      @note = Note.find(params[:id])
      @note.destroy
      render json: @note, status: :accepted
    end 

  
    private
  
    def note_params
      params.require(:note).permit(:title, :content, :user_id, :city_id)
    end
  
    def find_note
      @note = Note.find(params[:id])
    end

  


 
end

