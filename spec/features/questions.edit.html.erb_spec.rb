# Questions Controller Spec: Edit Page
  # Edit page exists
  # Edit page has an update question form

require 'rails_helper'

describe "questions/update.html.erb", :js => true do
  let!(:question) { create(:question) }
  before (:each) do
    visit edit_question_path(question)
  end

  it "displays the original (unedited) question" #do
  #   within(".field") do
  #     expect(find("title")).to have_content(question.title)
  #   end
  # end

  it "has a submit button that redirects to the question page"# do
  #   new_question = create(:question)
  #   fill_in "title", :with => new_question[:title]
  #   fill_in "content", :with => new_question[:content]

  #   click_on "Confirm Edit"
  #   expect(page).to have_content(new_question.content)
  # end

end