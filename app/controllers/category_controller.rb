require "refinerycms-pages"
require 'hpricot'

class CategoryController < ApplicationController
  @@categories = Category.all

  Page.class_eval do
    def for_category_page
      content_for(:body)[0, RefinerySetting.get(:preview_size_of_category_page_stories)].lstrip
    end
  end

  def all
    @@categories
  end

  def show
    limit = RefinerySetting.get(:number_of_stories_on_category_page)
    category = Category.find_by_name(params[:id].tr('-', ' '))
    @recently_created_pages = Page.tagged_with(category.name).order("created_at DESC").limit(limit)

    limit = RefinerySetting.get(:number_of_other_stories_on_category_page)
    other_categories = @@categories.select { |c| c != category }
    related_pages = Page.tagged_with(other_categories.collect{|c| c.name}, :any => true).order("created_at DESC").limit(limit * 2)
    @related_pages = (related_pages - @recently_created_pages)[0..(limit-1)]
  end

  #puts "|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
end