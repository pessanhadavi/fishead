require 'rails_helper'

RSpec.describe Choice, :type => :model do

  Choice.destroy_all
  Question.destroy_all
  User.destroy_all
  Quizroom.destroy_all

  fixtures :quizrooms, :users, :questions, :choices

  before(:each) do
    @choice = choices(:right_choice)
  end

  it "is valid with valid attributes" do
    expect(@choice).to be_valid
  end

  it "is not valid without an option:" do
    @choice.option = nil
    expect(@choice).to_not be_valid
  end
end
