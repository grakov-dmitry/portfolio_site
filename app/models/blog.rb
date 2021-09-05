class Blog < ApplicationRecord
  enum status:{ draft: 0, published: 1}
  extend FriendlyId
  friendly_id :tittle, use: :slugged

  validates_presence_of :tittle, :body

  belongs_to :topic
end
