require 'rails_helper'

RSpec.describe Question, :type => :model do
  context "Question Model contains the necessary attributes" do
    before :each do
      @question = Question.create(title: "My Title", content: "My Content", user_id: 1)
    end

    it "Has a title attribute" do
      expect(@question.title).to eq("My Title")
    end

    it "Has a content attribute" do
      expect(@question.content).to eq("My Content")
    end

    it "Has an associated user_id" do
      expect(@question.user_id).to eq(1)
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
