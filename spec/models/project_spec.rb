require 'rails_helper'

RSpec.describe Project, :type => :model do
  # it "is valid with valid attributes" do
  #   expect(Project.new).to be_valid
  # end
  it "is not valid without a portfolio"
  it "is not valid without a name"
  it "is not valid without a description"
  it "is not valid without a github_url"
  it "is not valid without a deployed_status"
end