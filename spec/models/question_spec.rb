require 'rails_helper'

RSpec.describe Question, :type => :model do

  Choice.destroy_all
  Question.destroy_all
  User.destroy_all
  Quizroom.destroy_all

  fixtures :quizrooms, :users, :questions

  before(:each) do
    @question = questions(:dunder_question)
  end

  it "is valid with valid attributes" do
    expect(@question).to be_valid
  end

  it "is not valid without an utterance" do
    @question.utterance = nil
    expect(@question).to_not be_valid
  end

  it "is not valid without a subject" do
    @question.subject = nil
    expect(@question).to_not be_valid
  end
end
