class Contact < ApplicationRecord
  ### Validations
  validates :description, presence: true
  validates :email, presence: true
  validates :name, presence: true
end
