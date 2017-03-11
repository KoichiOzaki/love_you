class ReadsController < ApplicationController
  def show
    @letter_header = LetterHeader.includes(:letter_summaries).find(params[:id])
  end
end
