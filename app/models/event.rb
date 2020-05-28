class Event < ApplicationRecord
  default_scope { order('date DESC') }
  scope :attendance, -> { attendances.count }
  scope :first_timers, -> { attendances.where(is_first_timer: true).count }
  scope :youtube, -> { attendances.where(viewed_from: 1).count }
  scope :facebook, -> { attendances.where(viewed_from: 2).count }
  scope :physical_church, -> { attendances.where(viewed_from: 3).count }

  has_many :attendances

  validates :date, presence: true
  validates :title, presence: true
end
