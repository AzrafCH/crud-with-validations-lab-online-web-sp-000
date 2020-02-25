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

  def create
    @song = Song.new(song_params)


  private
  def song_params
    params.require(:song).permit(:title, :released, :release_year, :genre, :artist_name)
  end
end
