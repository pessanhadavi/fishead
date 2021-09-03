class Question < ApplicationRecord
  belongs_to :quizroom
  belongs_to :user
end
