class Blog < ApplicationRecord
  enum status: { draft: 0, published: 1 }
  extend FriendlyId
  friendly_id :tittle, use: :slugged

  validates :tittle, :body, presence: true

  belongs_to :topic
end
