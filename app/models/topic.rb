class Topic < ApplicationRecord
  validates :title, presence: true

  has_many :blogs, dependent: nil
end
