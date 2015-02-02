class RemoveTitleDescriptionFromClassifiedAd < ActiveRecord::Migration
  def change
    remove_column :classified_ads, :title, :string
    remove_column :classified_ads, :description, :string
  end
end
