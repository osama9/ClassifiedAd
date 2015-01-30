class AddDefaultValuesForIsPublishedAndIsExpiredFieldsInClassifiedAdTable < ActiveRecord::Migration
  def change
  	change_column_default :classified_ads, :is_published, true
  	rename_column :classified_ads, :isExpired, :is_expired
  	change_column_default :classified_ads, :is_expired, false
  end
end
