class RemoveUserIdIdFromQuestions < ActiveRecord::Migration
  def change
    remove_reference :questions, :user_id, index: true
  end
end
