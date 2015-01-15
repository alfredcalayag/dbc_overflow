# upvote.rb
FactoryGirl.define do
  factory :upvote do
    association :question
  end
end