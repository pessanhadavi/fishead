class Quizroom < ApplicationRecord
  has_many :questions
  has_many :choices
  has_many :answers

  validates :name, presence: true
end
