require 'nokogiri'

class ApplicationController < ActionController::Base
  protect_from_forgery

  Page.class_eval do
    acts_as_taggable
    acts_as_taggable_on :categories

    before_save :add_tags

    def add_tags
      category_part = self.parts.select { |part| part.title == "Categories" }.first
      logger.info category_part.body
      doc = Nokogiri.XML(category_part.body)
      self.category_list = doc.content
    end
  end
end