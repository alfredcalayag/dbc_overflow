require 'rails_helper'

# describe "questions/index.html.erb" do
#   let!(:question) { create :question }
#   before (:each) do
#     visit root_path
#   end

#   it "displays a list of all questions" do
#     expect(page).to have_content(question.title)
#   end

#   it "can create a new question" do
#     question = FactoryGirl.attributes_for :question
#     fill_in "title", :with => question[:title]
#     fill_in "content", :with => question[:content]
#     fill_in "user_id", :with => question[:user_id]
#     click_on "Create"
#     expect(page).to have_content question[:title]
#   end

# end