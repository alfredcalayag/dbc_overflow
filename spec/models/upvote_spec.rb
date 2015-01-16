# upvote_spec.rb

require 'rails_helper'

describe Upvote do

  it "is valid when it has an associated question_id" do
    expect( build(:upvote, answer_id: nil) ).to be_valid
  end

  it "is valid when it has an associated answer_id" do
    expect(build(:upvote, question_id: nil)).to be_valid
  end

  it "is invalid when it has both associated question_id and question_id" do
    expect(build(:upvote)).to_not be_valid
  end

  it "is invalid when it does not have associated question_id nor answer_id" do
    expect(build(:upvote, question_id: nil, answer_id: nil)).to_not be_valid
  end
end
