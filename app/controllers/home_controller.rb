require "refinerycms-pages"

class HomeController < ApplicationController
  Page.class_eval do
    def for_home_page
      content_for(:body)[0, RefinerySetting.get(:preview_size_of_home_page_stories)].lstrip
    end
  end

  def index
    limit = RefinerySetting.get(:number_of_stories_on_home_page)
    @recently_created_pages = Page.where("deletable = ?", true).limit(limit).order("created_at DESC")
  end
end