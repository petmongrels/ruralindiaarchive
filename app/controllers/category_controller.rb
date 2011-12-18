require "refinerycms-pages"
require 'hpricot'

class CategoryController < ApplicationController
  @@categories = Category.all

  Page.class_eval do
    def for_category_page
      content_for(:body)[0, RefinerySetting.get(:category_page_story_preview_size)].lstrip
    end
  end

  def all
    @@categories
  end

  def show
    limit = RefinerySetting.get(:number_of_stories_on_category_page)
    category = Category.find_by_name(params[:id].tr('-', ' '))
    @recently_created_pages = Page.tagged_with(category.name).order("created_at DESC").limit(limit)
  end
end