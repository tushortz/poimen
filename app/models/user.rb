class User < ApplicationRecord
  validates :first_name, presence: true

  belongs_to :shepherd

  default_scope { order(:first_name, :last_name) }
end
