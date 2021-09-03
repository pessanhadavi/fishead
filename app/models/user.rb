class User < ApplicationRecord
  has_many :questions
  has_many :answers

  devise :database_authenticatable, :validatable
end
