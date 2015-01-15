require 'rails_helper'

describe Answer do
  context "Validations" do

    it "validates when content, question_id, and user_id are present" do
      expect( build(:answer) ).to be_valid
    end

    it "is invalid without content" do
      answer = build(:answer, content: nil)
      answer.valid?
      expect(answer.errors[:content]).to include("can't be blank")
    end

    it "is invalid without an associated question_id" do
      answer = build(:answer, question_id: nil)
      answer.valid?
      expect(answer.errors[:question_id]).to include("can't be blank")
    end

    # TODO
    it "is invalid without an associated user_id" #do
    #   answer = build(:answer, user_id: nil)
    #   answer.valid?
    #   expect( answer.errors[:user_id] ).to include("can't be blank")
    # end

  end

end
