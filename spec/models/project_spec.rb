require 'rails_helper'

RSpec.describe Project, :type => :model do
  # it "is valid with valid attributes" do
  #   expect(Project.new).to be_valid
  # end
  it "is not valid without a portfolio" do
    project = Project.new(portfolio: nil)
    expect(project).to_not be_valid
  end 
  it "is not valid without a name" do
    project = Project.new(name: nil)
    expect(project).to_not be_valid
  end 
  it "is not valid without a description" do
    project = Project.new(description: nil)
    expect(project).to_not be_valid
  end 

  it "is not valid without a github_url" do
    project = Project.new(github_url: nil)
    expect(project).to_not be_valid
  end 
  it "is not valid without a deployed_status" do
    project = Project.new(deployed: nil)
    expect(project).to_not be_valid
  end 
end