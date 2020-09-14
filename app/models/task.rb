class Task < ApplicationRecord
  belongs_to :project
  enum status: [ :todo, :in_progress, :ready_for_qa, :completed ]
  validates :title, :description, :status, :deadline, presence: true
  validates :status, :inclusion => {:in => statuses.keys}
  has_one_attached :document
end
