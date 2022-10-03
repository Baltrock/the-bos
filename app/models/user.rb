class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :information_form, dependent: :destroy
  def has_form?
      self.information_form.any?
  end
end
