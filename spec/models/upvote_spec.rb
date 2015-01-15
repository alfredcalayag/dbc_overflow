# upvote_spec.rb

require 'rails_helper'

describe Upvote do
  it "is valid when it has an associated question_id" do
    expect( build(:upvote) ).to be_valid
  end

  it "is invalid when it does not have associated question_id" do
    upvote = build(:upvote, question_id: nil)
    upvote.valid?
    expect(upvote.errors[:question_id]).to_not be_empty
  end
end