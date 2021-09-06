require 'rails_helper'

RSpec.describe User, :type => :model do
  fixtures :users

  before(:each) do
    @teacher = users(:michael)
  end

  it "is valid with valid attributes" do
    expect(@teacher).to be_valid
  end

  it "is not valid without a name" do
    @teacher.name = nil
    expect(@teacher).to_not be_valid
  end
end
