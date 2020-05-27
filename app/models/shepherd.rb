class Shepherd < ApplicationRecord
  validates_presence_of :first_name, :last_name, presence: true

  has_many :users

  default_scope { order(:first_name, :last_name) }

  def sheep
    users.where(shepherd_id: id).count
  end
end
