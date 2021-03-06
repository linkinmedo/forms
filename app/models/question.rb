class Question < ApplicationRecord
  belongs_to :form
  has_many :answer_fields, dependent: :destroy, :inverse_of => :question
  has_many :answers, dependent: :destroy, :inverse_of => :question

  accepts_nested_attributes_for :answer_fields, :allow_destroy => true
  accepts_nested_attributes_for :answers, :allow_destroy => true

  validates :position,  :presence => true
end
