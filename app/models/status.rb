class Status < ApplicationRecord
  validates :text, presence: true, uniqueness: { scope: :text,
  message: "duplicate status creation not allowed" }

  belongs_to :attendance

  default_scope { order(:text) }
end
