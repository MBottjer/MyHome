class ArtistsController < ApplicationController
  def index
  end

  def create
    @user = current_user
    @artist = @user.artists.create(link_params)
    redirect_to '/'
  end

  private
    def link_params
      params.require(:artist).permit(:artist)
    end

end
