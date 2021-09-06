require 'rails_helper'

RSpec.describe Quizroom, :type => :model do
  fixtures :quizrooms

  before(:each) do
    @quizroom = quizrooms(:office)
  end

  it "is valid with valid attributes" do
    expect(@quizroom).to be_valid
  end

  it "is not valid without a name" do
    @quizroom.name = nil
    expect(@quizroom).to_not be_valid
  end
end
