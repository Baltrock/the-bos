class IsAdmin < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # validates :name, uniqueness: { case_sensitive: false }
  include ActiveModel::Validations
end
