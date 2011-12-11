require "refinerycms-pages"

class HomeController < ApplicationController
  def index
    limit = RefinerySetting.get(:number_of_stories_on_home_page)
    @recently_created_pages = Page.where("deletable = ?", true).limit(limit).order("created_at DESC")
  end
end
