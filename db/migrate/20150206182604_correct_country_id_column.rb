class CorrectCountryIdColumn < ActiveRecord::Migration
  def change
  	rename_column :classified_ads, :counrty_id, :country_id
  end
end
