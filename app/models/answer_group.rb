class AnswerGroup < ApplicationRecord

  belongs_to :form
  has_many :answers, dependent: :destroy, :inverse_of => :answer_group

  accepts_nested_attributes_for :answers, :allow_destroy => true


end
