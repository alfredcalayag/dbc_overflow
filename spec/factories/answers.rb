FactoryGirl.define do
  factory :answer do
    association :question
    content "My content"
    user_id 1
  end
end