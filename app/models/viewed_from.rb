class ViewedFrom < ApplicationRecord
  default_scope { order(:text) }

  validates :text,
            presence: true,
            uniqueness: {
              scope: :text,
              message: 'duplicate viewed from creation not allowed'
            }
end
