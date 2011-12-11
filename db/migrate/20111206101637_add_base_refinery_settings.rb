require "refinerycms-settings"

class AddBaseRefinerySettings < ActiveRecord::Migration
  def self.up
    RefinerySetting.set(:home_page_story_preview_size, 1000)
    RefinerySetting.set(:number_of_stories_on_home_page, 7)
  end

  def self.down
    destroy_settings([:home_page_story_preview_size, :number_of_stories_on_home_page])
  end

private
  def self.destroy_settings(settings)
    settings.each do|setting|
      #RefinerySetting.get(setting).destroy
    end
  end
end
