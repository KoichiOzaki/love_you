class LetterHeadersController < ApplicationController
  def create
    @letter_header = LetterHeader.new(letter_headers_params)
    if @letter_header.save
      @letter_header.images.build
      flash.now[:success] = 'LetterHeader更新どね(｀･ω･´)ゞ'
    else
      flash.now[:alert] = 'オーマイゴッド'
    end
  end

  def update
    @letter_header = LetterHeader.find(params[:id])
    if @letter_header.update(letter_headers_params)
      @letter_header.images.build if @letter_header.images.blank?
      flash.now[:success] = 'LetterHeader更新どね(｀･ω･´)ゞ'
    else
      flash.now[:alert] = 'オーマイゴッド'
    end
  end

  private
  def letter_headers_params
    params.require(:letter_header).permit(
      :title,
      :send_from,
      destinations_attributes: [:id, :mail, :dear]
    ).merge(user_id: current_user.id)
  end
end
