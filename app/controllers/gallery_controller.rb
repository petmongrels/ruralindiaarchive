class GalleryController < BaseCategoryController
  def show
    @recently_created_pages = recent_pages_in_category("Gallery")
    @related_pages = []
  end
end
