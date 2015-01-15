require 'rails_helper'

describe QuestionsController do

  context "POST #create" do
    it "saves a new question in the database if valid" do
      expect {
        post :create, question: attributes_for(:question)
        }.to change(Question, :count).by(1)
    end

    it "does not save if invalid" do
      expect {
        post :create, question: attributes_for(:question, title: nil)
      }.to_not change(Question, :count)
    end

    it "re-directs to the #index page on a successful save" do
      post :create, question: attributes_for(:question)
      expect(response).to redirect_to assigns(:question)
    end
  end

  context "GET #index" do
      it "assigns @questions to Question.all" do
        question1 = create(:question, title: "Q1")
        question2 = create(:question, title: "Q2")
        get :index

        expect(assigns(:questions)).to eq Question.all
      end

      it "renders the :index template" do
        get :index

        expect(response).to render_template :index
      end
end

  context "GET #show" do
      it "assigns the requested question to @question" do
        question = create(:question)
        get :show, id: question

        expect(assigns(:question)).to eq question
      end

      it "assigns all associated answers to @answers" do
        question = create(:question)
        answer1 = create(:answer, question_id: question.id)
        answer2 = create(:answer, question_id: question.id)
        answer3 = create(:answer, question_id: 99999999)
        get :show, id: question

        expect(assigns(:question).answers).to eq([answer1, answer2])
        expect(assigns(:question).answers).to_not eq(Answer.all)
      end

      it "renders the :show template" do
        question = create(:question)
        get :show, id: question

        expect(response).to render_template :show
      end
  end

  context "GET #edit" do
    it "assigns the question to @question" do
      question = create(:question)
      get :edit, id: question

      expect(assigns(:question)).to eq question
    end

    it "renders the :edit template" do
      question = create(:question)
      get :edit, id: question

      expect(response).to render_template :edit
    end
  end

  context "PATCH #update" do
    it "changes the question's content" do
      question = create(:question)
      new_content = "banana"
      patch :update, id: question, question: {title: question.title, content: new_content}
      question.reload

      expect(assigns(:question).content).to eq(new_content)
    end

    it "re-directs to the question show template if information is valid" do
      question = create(:question)
      patch :update, id: question, question: attributes_for(:question)

      expect(response).to redirect_to question
    end

    it "re-renders the edit page if information is not valid" do
      question = create(:question)
      patch :update, id: question, question: attributes_for(:question, content: nil)

      expect(response).to render_template :edit
    end
  end

end
