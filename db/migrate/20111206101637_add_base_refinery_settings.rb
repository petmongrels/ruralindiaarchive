require "refinerycms-settings"

class AddBaseRefinerySettings < ActiveRecord::Migration
  def self.up
    RefinerySetting.set(:preview_size_of_home_page_stories, 1000)
    RefinerySetting.set(:number_of_stories_on_home_page, 7)

    RefinerySetting.set(:preview_size_of_category_page_stories, 1000)
    RefinerySetting.set(:number_of_stories_on_category_page, 7)
    RefinerySetting.set(:preview_size_of_other_stories_on_category_page, 100)
    RefinerySetting.set(:number_of_other_stories_on_category_page, 7)

    RefinerySetting.set(:preview_size_of_other_stories_on_story_page, 100)
    RefinerySetting.set(:number_of_other_stories_on_story_page, 7)

    RefinerySetting.set(:default_page_parts, ["Body", "Categories"])
  end

  def self.down
    destroy_settings([:preview_size_of_home_page_stories, :number_of_stories_on_home_page, :preview_size_of_category_page_stories, :number_of_stories_on_category_page,
                     :preview_size_of_other_stories_on_category_page, :number_of_other_stories_on_category_page, :preview_size_of_other_stories_on_story_page,
                     :number_of_other_stories_on_story_page])
  end

private
  def self.destroy_settings(settings)
    settings.each do|setting|
      RefinerySetting.get(setting).destroy
    end
  end
end