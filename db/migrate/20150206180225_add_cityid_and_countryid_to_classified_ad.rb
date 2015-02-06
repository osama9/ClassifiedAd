class AddCityidAndCountryidToClassifiedAd < ActiveRecord::Migration
  def change
  	add_column :classified_ads, :counrty_id, :integer
  	add_column :classified_ads, :city_id, :integer

  	add_index :classified_ads, :city_id
  	add_index :classified_ads, :counrty_id
  end
end
