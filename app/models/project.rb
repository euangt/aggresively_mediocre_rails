class Project < ApplicationRecord
  belongs_to :portfolio
  # belongs_to :user
  validates_presence_of :name
  validates_presence_of :description
  validates_presence_of :github_url
  validates_presence_of :deployed
end
