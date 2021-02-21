require 'rails_helper'

RSpec.describe Portfolio, :type => :model do
  it "is valid with valid attributes" do 
    expect(Portfolio.new).to be_valid
  end
  it "is not valid without a user" do
    portfolio = Portfolio.new(user_id: nil)
    expect(portfolio).to_not be_valid
  end
end