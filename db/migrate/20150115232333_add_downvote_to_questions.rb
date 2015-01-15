class AddDownvoteToQuestions < ActiveRecord::Migration
  def change
    add_reference :questions, :downvote, index: true
  end
end
