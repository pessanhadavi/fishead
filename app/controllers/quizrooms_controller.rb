class QuizroomsController < ApplicationController
  def index
    @quizrooms = Quizroom.all
  end
end
