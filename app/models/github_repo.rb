class GithubRepo < ApplicationRecord
  ### Validations
  validates :name, presence: true
  validates :stars, presence: true
end
