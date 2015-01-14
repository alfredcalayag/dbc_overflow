require 'faker'

FactoryGirl.define do
  factory :answer do
    association :question
    content { Faker::Lorem.sentence }
    sequence(:user_id) {|n| n }
  end
end