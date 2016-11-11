class Question < ApplicationRecord
  belongs_to :form
  has_many :answer_fields, dependent: :destroy, :inverse_of => :question

  accepts_nested_attributes_for :answer_fields, :allow_destroy => true
  # , :reject_if => lambda { |a| a[:content].blank? }

  # validates :position,  :presence => true
end
