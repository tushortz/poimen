class User < ApplicationRecord
  default_scope { order(:first_name, :last_name) }

  belongs_to :shepherd

  validates :first_name, presence: true
end
