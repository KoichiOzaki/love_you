class LettersController < ApplicationController
  def index
    @letter_headers = current_user.letter_headers
  end

  def new
    @letter_header = LetterHeader.new
    @letter_header.destinations.build
  end

  def edit
    @letter_header = LetterHeader.includes(:destinations).find(params[:id])
    @letter_header.images.build if @letter_header.images.blank?

    render :new
  end

  private
  def letter_params
  end
end
