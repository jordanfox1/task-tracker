class Task < ApplicationRecord
  include TaskStatus

  enum :status, TaskStatus::STATUSES.index_with(&:itself)
  validates :title, presence: true
  validates :status, presence: true, inclusion: { in: TaskStatus::STATUSES }
end
