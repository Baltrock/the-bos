class Admin < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :dashboard_forms, dependent: :destroy
  has_many :information_forms
end
