class QuizroomChannel < ApplicationCable::Channel
  def subscribed
    quizroom = Quizroom.find(params[:id])
    stream_for quizroom
  end
end
