class SongsController < ApplicationController

  def index
    @song = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end


end
