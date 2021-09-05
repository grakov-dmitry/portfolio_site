class Skill < ApplicationRecord
  include Placeholder
  validates_presence_of :tittle, :percent_utilized

  after_initialize :set_defaults

  def set_defaults
    self.badge ||= Placeholder.image_generator(height: 299, width: 199)
  end
end
