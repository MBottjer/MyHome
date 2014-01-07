class MyhomeController < ApplicationController
  
  def index

    if current_user
      client = YouTubeIt::Client.new(:username => YouTubeITConfig.username , :password => YouTubeITConfig.password , :dev_key => YouTubeITConfig.dev_key)
      @artists = current_user.artists
      @videos = @artists.map { |artist| client.videos_by(:query => artist.artist, :per_page => 2) }
      # @videos = client.videos_by(:query => iterate_through(videos), :per_page => 2)
      # @videos = client.playlists(username, "music")
      @links = current_user.links
      @user = current_user
    end

  end

  def iterate_through(artists)
    artists.each do |artist|
      artist.artist
    end
  end

end
