# upvote.rb
FactoryGirl.define do
  factory :upvote do
    association :question
    association :answer
  end
end