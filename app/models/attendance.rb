class Attendance < ApplicationRecord
  validates :full_name, presence: true, uniqueness: { scope: [:full_name, :event], message: "full name must be unique. please avoid duplicates" }
  validates :event, :viewed_from, :shepherd, presence: true

  belongs_to :viewed_from
  belongs_to :shepherd
  belongs_to :event
  
  default_scope { order("created_at DESC") }

end
