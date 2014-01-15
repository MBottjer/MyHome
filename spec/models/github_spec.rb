require 'spec_helper'

describe Github do

  language_hash = {"Ruby"=>15, nil=>2, "JavaScript"=>1, "CSS"=>1} 

  it "should give you the key values from the hash" do 
    expect(Github.total_number_of_repos(language_hash)).to eq [15,2,1,1]
  end

  it "should give provide the total number of repos" do 
    expect(Github.total(language_hash)).to eq 19
  end





end