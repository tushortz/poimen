class Attendance < ApplicationRecord
  belongs_to :status
  belongs_to :viewed_from
  belongs_to :shepherd
end
