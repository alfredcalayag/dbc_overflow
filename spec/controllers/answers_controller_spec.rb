require 'rails_helper'

describe AnswersController do

  context "POST #create" do
    it "it assigns the answer parameters to @answer" do
      question = create(:question)
      answer_content = "YOlo"
      post :create, answer: {content: answer_content, question_id: question.id}, question_id: question.id

      expect(assigns(:answer).content).to eq(answer_content)
    end

    it "saves the answer to the database if valid" do
      question = create(:question)
      expect {
        post :create, answer: attributes_for(:answer), question_id: question.id
      }.to change(Question.last.answers, :count).by(1)
    end

    it "redirects to the question page upon a successful save" do
      question = create(:question)
      answer_content = "YOlo"
      post :create, answer: {content: answer_content, question_id: question.id}, question_id: question.id

      expect(response).to redirect_to assigns(:question)
    end

    it "does not save to the database if invalid" do
      question = create(:question)
      expect {
        post :create, answer: {content: nil, question_id: question.id}, question_id: question.id
      }.to_not change(Question.last.answers, :count)

    end

    # TODO: Currently not implemented.
    # it "renders the question page without saving if invalid" do
    #   question = create(:question)
    #   post :create, answer: {content: nil, question_id: question.id}, question_id: question.id

    #   # expect(assigns(:question)).to eq(question)
    #   # expect(response).to render_template
    #   # expect(page).to
    #   # question_path['id'] = question.id
    #   expect(response).to render_template :question
    # end

  end
end