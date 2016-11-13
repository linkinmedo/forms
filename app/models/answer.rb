class Answer < ApplicationRecord
  belongs_to :answer_group
  belongs_to :question
end
