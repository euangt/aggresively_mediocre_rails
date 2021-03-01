require 'rails_helper'

RSpec.describe Portfolio, :type => :model do
  it "is not valid without a user" do
    portfolio = Portfolio.new(user_id: nil)
    expect(portfolio).to_not be_valid
  end
end