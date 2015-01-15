class Question < ActiveRecord::Base
  validates :title, :content, presence: true
  has_many :answers, dependent: :destroy
  has_many :upvotes, dependent: :destroy
end
