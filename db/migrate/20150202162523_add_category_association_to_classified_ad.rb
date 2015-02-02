class AddCategoryAssociationToClassifiedAd < ActiveRecord::Migration
  def change
  	add_column :classified_ads, :category_id, :integer
  	add_index :classified_ads, :category_id
  end
end
