class Youtube < ActiveRecord::Base

  def self.create_client
    YouTubeIt::Client.new(:username => YouTubeITConfig.username , :password => YouTubeITConfig.password , :dev_key => YouTubeITConfig.dev_key)
  end

  def self.filter_videos(artists)
    artists.map { |artist| Youtube.create_client.videos_by(:query => artist.artist, :per_page => 2) }
  end

end