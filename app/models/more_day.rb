class MoreDay < ApplicationRecord
  validates :start_time, presence: true
  validates :end_time, presence: true
  validate :end_after_start

  private
  def end_after_start
    return if end_time.blank? || start_time.blank?

    if end_time < start_time
      errors.add(:end_time, "must be after start time")
    end
  end
end