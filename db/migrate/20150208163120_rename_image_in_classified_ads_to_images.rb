class RenameImageInClassifiedAdsToImages < ActiveRecord::Migration
  def change
  	rename_column :classified_ads, :image, :images
  end
end
