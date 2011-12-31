require "refinerycms-pages"

class StoryController < ApplicationController
  Page.class_eval do
    def for_story_page
      content_for(:body)[0, RefinerySetting.get(:preview_size_of_other_stories_on_story_page)].lstrip
    end
  end

  def show
    @story = Page.find(params[:id])
    limit = RefinerySetting.get(:number_of_other_stories_on_story_page)
    @recently_created_related_pages = Page.tagged_with(@story.category_list, :any => true).order("created_at DESC").limit(limit + 1) - [@story]
  end
end