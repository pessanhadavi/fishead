class QuizroomsController < ApplicationController
  def index
    @quizrooms = Quizroom.all
  end

  def show
    @quizroom = Quizroom.find(params[:id])
    if current_user.teacher
      @questions = set_questions
    else
      @questions = filter_done_questions(set_questions)
    end
  end

  private

  def set_questions
    Question.where(subject: @quizroom.name)
  end

  def filter_done_questions(questions)
    answers = Answer.where(user: current_user).includes(:question)
    questions_done = answers.map { |answer| answer.question }
    questions - questions_done
  end
end
