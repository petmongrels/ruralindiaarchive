class BaseCategoryController < ApplicationController
  @@categories = Category.all

  def all
    @@categories
  end

  protected
  def recent_pages_in_category(category_name)
    category = Category.find_by_name(category_name.tr('-', ' '))
    limit = RefinerySetting.get(:number_of_stories_on_category_page)
    Page.tagged_with(category.name).order("created_at DESC").limit(limit)
  end

  def related_pages_for_category(categories)
    category = Category.find_by_name(params[:id].tr('-', ' '))
    limit = RefinerySetting.get(:number_of_other_stories_on_category_page)
    other_categories = categories.select { |c| c != category }
    related_pages = Page.tagged_with(other_categories.collect { |c| c.name }, :any => true).order("created_at DESC").limit(limit * 2)
    (related_pages - @recently_created_pages)[0..(limit-1)]
  end
end