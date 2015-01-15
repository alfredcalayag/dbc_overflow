# downvote_spec.rb
require 'rails_helper'

describe Downvote do
  it "is valid when it has an associated question_id" do
    expect( build(:downvote) ).to be_valid
  end

  it "is invalid when it does not have associated question_id" do
    downvote = build(:downvote, question_id: nil)
    downvote.valid?
    expect(downvote.errors[:question_id]).to_not be_empty
  end
end