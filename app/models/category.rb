class Category < ActiveRecord::Base
  def as_url
    if name == 'Gallery'
      '/gallery'
    else
      '/categories/' + name.tr(' ', '-')
    end
  end
end
