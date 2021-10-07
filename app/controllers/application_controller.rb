class ApplicationController < ActionController::Base
  include DeviseWhitelist
  include SetSource
  include CurrentUserConcern
  include DefaultPageContent
  before_action :set_copyright

  def set_copyright
    @copyright = DimaViewTool::Renderer.copyright 'Dima Hrakau', 'All rights reserved'
  end
end

module DimaViewTool
  class Renderer
    def self.copyright(name, msg)
      "&copy; #{Time.zone.now.year} | <b>#{name}</b> #{msg}".html_safe
    end
  end
end
