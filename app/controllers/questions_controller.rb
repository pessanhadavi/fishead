class QuestionsController < ApplicationController
  def show
    @question = Question.find(params[:id])
    @answers = @question.answers.includes(:choice, :user)
    @answer = Answer.new
    @choice_array = set_choice_array
  end

  private

  def set_choice_array
    @question.choices.map do |choice|
      [choice.id, choice.option]
    end
  end
end
