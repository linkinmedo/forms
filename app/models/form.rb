class Form < ApplicationRecord
  belongs_to :user
  has_many :questions, dependent: :destroy, :inverse_of => :form

  accepts_nested_attributes_for :questions, :allow_destroy => true
  # , :reject_if => lambda { |a| a[:content].blank? }

  scope :sorted, lambda { order("created_at DESC") }

  validates :title,  :presence => true

end
