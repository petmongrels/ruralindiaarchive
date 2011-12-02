class CategoryController < ApplicationController
  @@categories = Category.all

  def all
    @@categories
  end
end
