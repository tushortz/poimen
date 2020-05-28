class Status < ApplicationRecord
  default_scope { order(:text) }

  validates :text,
            presence: true,
            uniqueness: {
              scope: :text,
              message: 'duplicate status creation not allowed'
            }
end
