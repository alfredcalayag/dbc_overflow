class AddAnswerIdToUpvotes < ActiveRecord::Migration
  def change
    add_reference :upvotes, :answer, index: true
  end
end
