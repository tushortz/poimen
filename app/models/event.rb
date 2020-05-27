class Event < ApplicationRecord
  validates :date, :title, presence: true

  has_many :attendances

  default_scope { order("date DESC") }

  def first_timers
    attendances.where(is_first_timer: true).count
  end

  def physical_church
    attendances.where(viewed_from: 3).count
  end

  def facebook
    attendances.where(viewed_from: 2).count
  end

  def youtube
    attendances.where(viewed_from: 1).count
  end

  def attendance
    attendances.count
  end
end
