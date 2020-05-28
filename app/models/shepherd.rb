class Shepherd < ApplicationRecord
  default_scope { order(:first_name, :last_name) }

  has_many :users, dependent: :destroy

  validates :first_name, presence: true
  validates :last_name, presence: true

  def sheep
    users.where(shepherd_id: id).count
  end

end
