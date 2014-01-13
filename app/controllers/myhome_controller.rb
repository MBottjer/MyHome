class MyhomeController < ApplicationController
  
  def index

    if current_user
      @user = current_user
      @artists = @user.artists
      @videos = Youtube.filter_videos(@artists)
      @links = @user.links
      @information = Github.create_hash_of_dominant_languages_in_repo_from(Github.dominantly_used_languages)
      @client_id = ENV['GH_BASIC_CLIENT_ID']
    end

  end

end
