class Shepherd < ApplicationRecord
  default_scope { order(:first_name, :last_name) }
  scope :sheep, -> { users.where(shepherd_id: id).count }

  has_many :users

  validates :first_name, presence: true
  validates :last_name, presence: true
end
