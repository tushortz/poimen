class Attendance < ApplicationRecord
  default_scope { order('created_at DESC') }

  belongs_to :viewed_from
  belongs_to :shepherd
  belongs_to :event

  validates :event, presence: true
  validates :shepherd, presence: true
  validates :viewed_from, presence: true
  validates :full_name,
            presence: true,
            uniqueness: {
              scope: [:full_name, :event],
              message: 'must be unique. please avoid duplicates'
            }
end
