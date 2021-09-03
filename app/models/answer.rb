class Answer < ApplicationRecord
  belongs_to :choice
  belongs_to :question
  belongs_to :quizroom
  belongs_to :user
end
