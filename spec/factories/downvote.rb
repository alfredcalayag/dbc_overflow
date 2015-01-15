FactoryGirl.define do
  factory :downvote do
    association :question
  end
end