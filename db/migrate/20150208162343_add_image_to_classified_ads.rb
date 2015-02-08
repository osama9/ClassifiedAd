class AddImageToClassifiedAds < ActiveRecord::Migration
  def change
    add_column :classified_ads, :image, :string
  end
end
