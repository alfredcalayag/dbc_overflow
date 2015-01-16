# upvote.rb

class Upvote < ActiveRecord::Base
  belongs_to :question
  belongs_to :answer
  validate :question_id_xor_answer_id
end

private
def question_id_xor_answer_id
  if !(question_id.blank? ^ answer_id.blank?)
    errors.add(:base, "Either question_id or answer_id must be present, but NOT both.")
  end
end