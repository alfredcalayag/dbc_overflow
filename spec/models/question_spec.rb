require 'rails_helper'

describe Question, :type => :model do
  context "Validations" do

    it "has a valid factory" do
      expect( build(:question) ).to be_valid

    end

    it "is valid when title, content, and user_id are present" do
      expect(build(:question)).to be_valid
    end

    it "is invalid without a title" do
      question = build(:question, title: nil)
      question.valid?
      expect(question.errors[:title]).to include("can't be blank")
    end

    it "is invalid without content" do
      question = build(:question, content: nil)
      question.valid?
      expect(question.errors[:content]).to include("can't be blank")
    end

    it "is invalid without an associated user_id" do
      question = build(:question, user_id: nil)
      question.valid?
      expect(question.errors[:user_id]).to include("can't be blank")
    end
  end

end
