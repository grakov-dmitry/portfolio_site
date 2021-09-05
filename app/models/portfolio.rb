class Portfolio < ApplicationRecord
  has_many :technologies
  accepts_nested_attributes_for :technologies,
                                reject_if: lambda { |attrs| attrs['name'].blank? }

  include Placeholder
  validates_presence_of :title, :body, :main_image, :thumb_image

  def self.angular
    where(subtotle: "Angular")
  end

  scope :ruby_on_rails_portfolio_items, -> { where(subtotle: "Rails")}

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= Placeholder.image_generator(height: 499, width: 299)
    self.thumb_image ||= Placeholder.image_generator(height: 299, width: 199)
  end
end
