class Form < ApplicationRecord
  belongs_to :user, dependent: :destroy
  has_many :questions
end
