# Questions Controller Spec: Edit Page
  # Edit page exists
  # Edit page has an update question form

require 'rails_helper'

describe "questions/update.html.erb", :js => true do
  let!(:question) { create(:question) }
  before (:each) do
    visit edit_question_path(question)
  end

  it "displays the original (unedited) question" do
    expect(page).to have_content(question.content)
  end

  it "saves the newly edited question"

  it "does not display the previous question"

end