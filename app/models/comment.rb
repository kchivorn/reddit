class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :link

  scope :recent, -> { order(created_at: :desc) }
end
