class AddUserIdToQuestions < ActiveRecord::Migration
  def change
    add_reference :questions, :user_id, index: true
  end
end
