class Question < ActiveRecord::Base
  validates :title, :content, :user_id, presence: true
  has_many :answers
end
