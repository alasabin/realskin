class ImagesController < ApplicationController

  def create
    respond_to do |format|
      if @image.save
        format.html { redirect_to controller: 'products', action: 'new' }
        format.json { render action: 'show', status: :created, location: @line_item }
      else
        format.html { render action: 'new' }
        format.json { render json: @line_item.errors, status: :unprocessable_entity }
      end
    end
  end

end
