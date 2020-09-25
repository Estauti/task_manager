class Task < ApplicationRecord
  validates_presence_of :title, :description, :due_date

  STATUSES = %w(todo doing done trash).freeze
  PRIORITIES = %w(low medium high urgent).freeze

  enum status: {
    todo:  0,
    doing: 1,
    done:  2, 
    trash: 3
  }

  enum priority: {
    low:    0,
    medium: 1,
    high:   2,
    urgent: 3
  }
end
