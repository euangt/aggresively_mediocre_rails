class Project < ApplicationRecord
  belongs_to :portfolio
  belongs_to :user, through: :portfolio
end
