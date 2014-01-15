class Github < ActiveRecord::Base

  def self.get_json(uri)
    response = Net::HTTP.get_response(URI(uri))
    JSON.parse(response.body)
  end

  def self.dominantly_used_languages 
    get_json("https://api.github.com/users/Mbottjer/repos").map {|repo| repo["language"]}
  end

  def self.create_hash_of_dominant_languages_in_repo_from(used_languages)
    used_languages.inject(Hash.new(0)) {|hash, number| hash[number] += 1 ; hash}
  end

  def self.total_number_of_repos(repos_and_respective_languages)
    array_of_repos = []
    repos_and_respective_languages.each_value do |value| 
      array_of_repos << value 
    end
    array_of_repos
  end

  def self.total(repos_and_respective_languages)
    total_number_of_repos(repos_and_respective_languages).inject {|sum, number| sum + number }
  end


  
end