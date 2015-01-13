require 'rails_helper'

describe Question, :type => :model do
  context "Validation" do

    it "has a valid factory" do
      expect( build(:question) ).to be_valid

    end

    it "is valid when title, content, and user_id are present" do
      expect(build(:question)).to be_valid
    end

    it "is invalid without a title" do
      question = build(:question, title: nil)
      p question.valid?
      # p question.errors
      expect(question.errors[:title]).to include("can't be blank")
    end



  end

  context "Does not validate unless all attributes are present" do
    it "Does not save if title is blank"
    it "Returns an error if the title is blank"
    it "Does not save if content is blank"
    it "Returns an error if the content is blank"
    it "Does not save without an associated user_id"
    it "Returns an error if there is no associated user_id"
  end

end
