class Status < ApplicationRecord
  validates :text, presence: true, uniqueness: { scope: :text,
  message: "duplicate status creation not allowed" }

  default_scope { order(:text) }

end
