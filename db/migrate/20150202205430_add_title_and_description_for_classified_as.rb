class AddTitleAndDescriptionForClassifiedAs < ActiveRecord::Migration
  def change
  	add_column :classified_ads, :title, :string
  	add_column :classified_ads, :description, :text

  	drop_table :products
  end
end
