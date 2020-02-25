class SongsController < ApplicationController

  def index
    @song = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def new 
    @song = Song.new 
  end 


  private 

  def show_params 
    params.require(:show).permit(:title, :released, :release_year, :genre, :artist_name)
  end 


end
