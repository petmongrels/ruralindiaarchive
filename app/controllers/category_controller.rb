require "refinerycms-pages"
require 'hpricot'

class CategoryController < BaseCategoryController
  Page.class_eval do
    def for_category_page
      content_for_setting(:preview_size_of_category_page_stories)
    end

    def for_category_other_story_story
      content_for_setting(:preview_size_of_other_stories_on_category_page)
    end
private
    def content_for_setting(setting_name)
      content_for(:body)[0, RefinerySetting.get(setting_name)].lstrip
    end
  end

  def show
    @recently_created_pages = recent_pages_in_category(params[:id])
    @related_pages = related_pages_for_category(@@categories)
  end

  #puts "|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
end