# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  
  factory :link do
    uri "MyTex"
    user_id 1
  end

  factory :with_github_name, parent: :link do
    name "Github"
  end

  factory :with_generic_name, parent: :link do
    name "Something"
  end


end
