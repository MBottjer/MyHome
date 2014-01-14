class ArtistsController < ApplicationController
  def index
  end

  def create
    @user = current_user
    @artist = @user.artists.create(link_params)
    redirect_to '/'
  end

  def destroy 
    @user = current_user
    @video = Artist.find(params[:id])
    @video.destroy

    redirect_to '/'
  end

  private
    def link_params
      params.require(:artist).permit(:artist)
    end

end
