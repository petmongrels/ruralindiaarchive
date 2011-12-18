class Category < ActiveRecord::Base
  def as_url
    name.tr(' ', '-')
  end
end
