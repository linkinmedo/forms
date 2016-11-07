class AnswerField < ApplicationRecord
  belongs_to :question, dependent: :destroy
end
