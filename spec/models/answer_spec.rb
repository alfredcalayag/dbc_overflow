require 'rails_helper'

RSpec.describe Answer, :type => :model do
  context "Answer Model contains the necessary attributes" do
    before :each do
      @answer = Answer.create(content: "My answer", question_id: 1, user_id: 1)
    end


    it "Has a content attribute" do
      expect(@answer.content).to eq("My answer")
    end

    it "Has an associated question_id" do
      expect(@answer.question_id).to eq(1)
    end

    it "Has an associated question_id" do
      expect(@answer.user_id).to eq(1)
    end

  end

  context "Does not validate unless all attributes are present" do
    it "Does not save if content is blank"
    it "Returns an error if the content is blank"
    it "Does not save without an associated question_id"
    it "Returns an error if there is no associated question_id"
    it "Does not save without an associated user_id"
    it "Returns an error if there is no associated user_id"
  end
end
