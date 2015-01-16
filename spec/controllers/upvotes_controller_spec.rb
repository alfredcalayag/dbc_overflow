# upvotes_controller_spec.rb
require 'rails_helper'

describe UpvotesController do

  it "saves the upvote to the database if valid" do
    question = create(:question)
    upvote = create(:upvote, answer_id: nil, question_id: question.id)
    expect {
      post :create, upvote: attributes_for(:upvote, answer_id: nil), question_id: question.id
    }.to change(Question.last.upvotes, :count).by(1)
  end

    it "is invalid without an associated question_id" do
      upvote = build(:upvote, question_id: nil, answer_id: nil)
      upvote.valid?
      # p upvote.errors
      expect(upvote.errors[:base]).to include("Either question_id or answer_id must be present, but NOT both.")
    end

end