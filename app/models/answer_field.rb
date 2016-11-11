class AnswerField < ApplicationRecord
  belongs_to :question

  validates :answer_type,  :presence => true

end
