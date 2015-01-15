class AddUpvoteToQuestions < ActiveRecord::Migration
  def change
    add_reference :questions, :upvote, index: true
  end
end
