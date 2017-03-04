class LettersController < ApplicationController
  def index
    
  end

  def new
    @letter_header = LetterHeader.new
    @letter_header.destinations.build
  end

  private
  def letter_params
  end
end
