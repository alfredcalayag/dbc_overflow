# Questions Controller Spec
  # Index page has a new question form
  # Show page has a new answer form
  # Show page has a destroy question link
  # Edit page exists
  # Edit page has an update question form

require 'rails_helper'

describe "questions/show.html.erb", :js => true do
  let!(:question) { create(:question) }
  let!(:answer) { create(:answer, question_id: question.id) }
  before (:each) do
    # create(:answer, question_id: question.id)
    visit question_path(question)
  end

  it "displays the question" do
    expect(page).to have_content(question.content)
  end

  it "displays all previous answers to the question" do
    expect(page).to have_content(answer.content)
  end

  it "can create a new answer" do
    answer = attributes_for :answer
    fill_in "content", :with => answer[:content]
    click_on "Submit Answer"

    expect(page).to have_content answer[:content]
  end

end