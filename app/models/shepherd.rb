class Shepherd < ApplicationRecord
  validates_presence_of :first_name, :last_name, presence: true

  has_many :users

  default_scope { order(:first_name, :last_name) }

  def test
    0
  end
end