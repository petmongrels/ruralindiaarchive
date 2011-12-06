require "refinerycms-pages"

class HomeController < ApplicationController
  def index
    @recently_created_pages = Page.limit(RefinerySetting.get(:number_of_stories_on_home_page)).order("created_at DESC")
  end
end
