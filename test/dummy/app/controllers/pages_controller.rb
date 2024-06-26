class PagesController < ApplicationController
  layout "documentation"

  def index
    render "pages/index"
  end
end