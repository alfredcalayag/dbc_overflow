class Answer < ActiveRecord::Base
  validates :content, :question_id, :user_id, presence: true
  belongs_to :question
end
