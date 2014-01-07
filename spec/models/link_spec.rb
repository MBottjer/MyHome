require 'spec_helper'

describe Link do

  it {should belong_to :user}

  let(:link) { FactoryGirl.create(:with_github_name) }

  let(:generic_link) { FactoryGirl.create(:with_generic_name) }

  # let(:generic_link) { FactoryGirl.create(:generic_link)}

  it "should return the github icon class name if github is the name" do 
    expect(link.has_relevant_icon).to eq "fa fa-github-square fa-2x"
  end

  it "should return the class button radius if no class is defined for that name" do 
    expect(generic_link.has_relevant_icon).to eq "button radius"
  end

end
