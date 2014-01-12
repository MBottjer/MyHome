class MyhomeController < ApplicationController
  
  def index

    if current_user
      @artists = current_user.artists
      @videos = Youtube.filter_videos(@artists)
      # @videos = client.videos_by(:query => iterate_through(videos), :per_page => 2)
      # @videos = client.playlists(username, "music")
      @links = current_user.links
      @user = current_user
      @information = information.inject(Hash.new(0)) {|hash, number| hash[number] += 1 ; hash}
    end

  end


  def get_json(uri)
    response = Net::HTTP.get_response(URI(uri))
    JSON.parse(response.body)
  end

  def information 
    get_json("https://api.github.com/users/Mbottjer/repos").map {|repo| repo["language"]}
  end



end
