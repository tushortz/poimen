class Event < ApplicationRecord
  default_scope { order('date DESC') }

  has_many :attendances, dependent: :destroy

  validates :date, presence: true
  validates :title, presence: true

  def attendance
    attendances.count
  end

  def first_timers
    attendances.where(is_first_timer: true).count
  end

  def youtube
    attendances.where(viewed_from: 1).count
  end

  def facebook
    attendances.where(viewed_from: 2).count
  end

  def physical_church
    attendances.where(viewed_from: 3).count
  end
end
