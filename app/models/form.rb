class Form < ApplicationRecord

  belongs_to :user
  has_many :questions, dependent: :destroy, :inverse_of => :form
  has_many :answer_groups, dependent: :destroy, :inverse_of => :form

  accepts_nested_attributes_for :questions, :allow_destroy => true, :reject_if => proc { |attributes| attributes['question_text'].blank? }
  accepts_nested_attributes_for :answer_groups, :allow_destroy => true

  scope :sorted, lambda { order("created_at DESC") }

  validates :title,  :presence => true

end
