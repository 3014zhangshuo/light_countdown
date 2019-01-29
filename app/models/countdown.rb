class Countdown < ApplicationRecord
  validates :event, :end_at, presence: true

  def remain_days
    (end_at - Date.current).to_i
  end
end
