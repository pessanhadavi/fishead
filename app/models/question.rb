class Question < ApplicationRecord
  belongs_to :quizroom
  belongs_to :user

  has_many :choices
  has_many :answers

  validates :utterance, :subject, presence: true
end
