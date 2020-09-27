class Task < ApplicationRecord
  belongs_to :responsible

  validates_presence_of :title, :description, :due_date, :responsible
  validate :due_date_in_future

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

  def due_date_in_future
    return if due_date && due_date > DateTime.now
    return unless due_date_changed?

    errors.add(:due_date, "must be in the future")
  end
end
