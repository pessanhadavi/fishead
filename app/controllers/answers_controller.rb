class AnswersController < ApplicationController
  def create
    @answer = Answer.new(answer_params)
    @quizroom = find_quizroom
    @answer.question = @answer.choice.question
    @answer.quizroom = @quizroom
    @answer.user = current_user
    if @answer.save
      QuizroomChannel.broadcast_to(
        @quizroom,
        render_to_string(partial: "./questions/show_teacher/answer", locals: { answer: @answer })
      )
      redirect_to quizroom_path(@answer.quizroom)
    end
  end

  private

  def answer_params
    params.require(:answer).permit(:choice_id)
  end

  def find_quizroom
    Quizroom.find(params[:quizroom_id])
  end
end
