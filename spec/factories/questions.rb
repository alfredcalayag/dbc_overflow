require 'faker'

FactoryGirl.define do
  factory :question do
    sequence(:title) { |n| "Title #{n}" }
    content { Faker::Lorem.sentence }
    sequence(:user_id) {|n| n }
  end
end