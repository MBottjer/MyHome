class MyhomeController < ApplicationController
  
  def index

    if current_user
      client = YouTubeIt::Client.new(:username => YouTubeITConfig.username , :password => YouTubeITConfig.password , :dev_key => YouTubeITConfig.dev_key)
      @videos = client.videos_by(:query => "bon iver album", :per_page => 2)
      # @videos = client.playlists(username, "music")
      @links = current_user.links
      @user = current_user

    end

  end

end
