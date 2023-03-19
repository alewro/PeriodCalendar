class OneDay < ApplicationRecord
  validates :start_time, presence: true
end
