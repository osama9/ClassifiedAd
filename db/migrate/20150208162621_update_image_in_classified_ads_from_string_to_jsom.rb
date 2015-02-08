class UpdateImageInClassifiedAdsFromStringToJsom < ActiveRecord::Migration
  def change
  	remove_column :classified_ads, :image, :string
  	add_column :classified_ads, :image, :json
  end
end
