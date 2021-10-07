class Skill < ApplicationRecord
  include Placeholder
  validates :tittle, :percent_utilized, presence: true

  after_initialize :set_defaults

  def set_defaults
    self.badge ||= Placeholder.image_generator(height: 299, width: 199)
  end
end
