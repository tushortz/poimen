class User < ApplicationRecord
  validates :first_name, presence: true

  default_scope { order(:first_name, :last_name) }
end
