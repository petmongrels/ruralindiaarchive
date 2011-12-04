require "refinerycms-pages"

class HomeController < ApplicationController
  def index
    @recently_created_pages = Page.limit(10).order("created_at DESC")
  end
end
