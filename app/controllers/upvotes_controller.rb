class UpvotesController < ApplicationController
  def create
    @question = Question.find(params[:question_id])
    @upvote = @question.upvotes.create(question_id: @question.id)
    redirect_to question_path(@question)
  end

  # private
  # def upvote_params
  #   params.require(:upvote).permit(:question_id || :answer_id)
  # end
end