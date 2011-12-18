class AddCategories < ActiveRecord::Migration
  def self.up
    Category.create(:name => "Things we do", :description => "")
    Category.create(:name => "Tongues", :description => "")
    Category.create(:name => "Pictures", :description => "")
    Category.create(:name => "Getting there", :description => "")
    Category.create(:name => "We are", :description => "")
    Category.create(:name => "Things we make", :description => "")
    Category.create(:name => "Foot soldiers of freedom", :description => "")
    Category.create(:name => "Farm crisis", :description => "")
    Category.create(:name => "Musafir", :description => "")
  end

  def self.down
    Category.destroy_all
  end
end