require 'spec_helper'

describe User do
  
  let(:user) { FactoryGirl.create(:user) }

  it {should have_many :links}

  it {should have_many :artists}

end