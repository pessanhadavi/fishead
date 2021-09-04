class AnswersController < ApplicationController
  def create
    @answer = Answer.new(answer_params)
    @quizroom = find_quizroom
    @answer.question = @answer.choice.question
    @answer.quizroom = @quizroom
    @answer.user = current_user
    redirect_to quizroom_path(@answer.quizroom) if @answer.save
  end

  private

  def answer_params
    params.require(:answer).permit(:choice_id)
  end

  def find_quizroom
    Quizroom.find(params[:quizroom_id])
  end
end
