class GithubRepo < ApplicationRecord
  ### Validations
  validates :description, presence: true
  validates :name, presence: true
  validates :stars, presence: true
end
