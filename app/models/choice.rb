class Choice < ApplicationRecord
  belongs_to :question
  belongs_to :quizroom

  has_many :answers

  validates :option, presence: true
end
