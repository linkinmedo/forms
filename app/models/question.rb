class Question < ApplicationRecord
  belongs_to :form, dependent: :destroy
  has_one :answer_field
end
