class CategoryController < ApplicationController
  @@categories = Category.all

  def all
    @@categories
  end

  def show
    limit = RefinerySetting.get(:number_of_stories_on_category_page)
    category = Category.find(params[:id])
    @recently_created_pages = Page.where("deletable = ?", true).limit(limit).order("created_at DESC")
  end
end