class ViewedFrom < ApplicationRecord
  validates :text, presence: true, uniqueness: { scope: :text,
  message: "duplicate viewed from creation not allowed" }

  default_scope { order(:text) }

end
